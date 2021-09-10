package com.vungle.warren.ui.presenter;

import android.content.ActivityNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.vungle.warren.SessionData;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.Report;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.omsdk.OMTracker;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.ui.DurationRecorder;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.PresenterAppLeftCallback;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.WebViewAPI;
import com.vungle.warren.utility.AsyncFileUtils;
import com.vungle.warren.utility.Scheduler;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class MRAIDAdPresenter implements WebAdContract.WebAdPresenter, WebViewAPI.MRAIDDelegate, WebViewAPI.WebClientErrorHandler {
    private static final String ACTION = "action";
    private static final String ACTION_WITH_VALUE = "actionWithValue";
    private static final String CLOSE = "close";
    private static final String CONSENT_ACTION = "consentAction";
    private static final String EXTRA_INCENTIVIZED_SENT = "incentivized_sent";
    private static final String EXTRA_REPORT = "saved_report";
    private static final String OPEN = "open";
    private static final String OPEN_NON_MRAID = "openNonMraid";
    private static final String OPEN_PRIVACY = "openPrivacy";
    private static final String SUCCESSFUL_VIEW = "successfulView";
    private static final String TAG = "com.vungle.warren.ui.presenter.MRAIDAdPresenter";
    private static final String TPAT = "tpat";
    private static final String USE_CUSTOM_CLOSE = "useCustomClose";
    private static final String USE_CUSTOM_PRIVACY = "useCustomPrivacy";
    private static final String VIDEO_VIEWED = "videoViewed";
    private WebAdContract.WebAdView adView;
    private boolean adViewed;
    private Advertisement advertisement;
    private final AdAnalytics analytics;
    private File assetDir;
    private boolean backEnabled;
    private AdContract.AdvertisementPresenter.EventListener bus;
    private Map<String, Cookie> cookieMap = new HashMap();
    private long duration;
    private DurationRecorder durationRecorder;
    private AsyncFileUtils.ExistenceOperation fileExistenceOperation;
    private AtomicBoolean isDestroying = new AtomicBoolean(false);
    private final OMTracker omTracker;
    private final Placement placement;
    private Repository.SaveCallback repoCallback = new Repository.SaveCallback() {
        /* class com.vungle.warren.ui.presenter.MRAIDAdPresenter.AnonymousClass1 */
        boolean errorHappened = false;

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onError(Exception exc) {
            if (!this.errorHappened) {
                this.errorHappened = true;
                MRAIDAdPresenter.this.makeBusError(26);
                VungleLogger.error(MRAIDAdPresenter.class.getSimpleName(), new VungleException(26).getLocalizedMessage());
                MRAIDAdPresenter.this.closeView();
            }
        }

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onSaved() {
        }
    };
    private Report report;
    private Repository repository;
    private final Scheduler scheduler;
    private AtomicBoolean sendReportIncentivized = new AtomicBoolean(false);
    private SessionData sessionData;
    private WebViewAPI webClient;

    public MRAIDAdPresenter(Advertisement advertisement2, Placement placement2, Repository repository2, Scheduler scheduler2, AdAnalytics adAnalytics, WebViewAPI webViewAPI, OptionsState optionsState, File file, SessionData sessionData2, OMTracker oMTracker) {
        this.advertisement = advertisement2;
        this.repository = repository2;
        this.placement = placement2;
        this.scheduler = scheduler2;
        this.analytics = adAnalytics;
        this.webClient = webViewAPI;
        this.assetDir = file;
        this.sessionData = sessionData2;
        this.omTracker = oMTracker;
        loadData(optionsState);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void closeView() {
        this.adView.close();
        this.scheduler.cancelAll();
    }

    private void download() {
        reportAction("cta", "");
        try {
            this.analytics.ping(new String[]{this.advertisement.getCTAURL(true)});
            this.adView.open(this.advertisement.getCTAURL(false), new PresenterAppLeftCallback(this.bus, this.placement));
        } catch (ActivityNotFoundException unused) {
            VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#download", "Download - Activity Not Found");
        }
    }

    private void handleWebViewException(@VungleException.ExceptionCode int i) {
        WebAdContract.WebAdView webAdView = this.adView;
        if (webAdView != null) {
            webAdView.removeWebView();
        }
        StringBuilder q = ic.q("WebViewException: ");
        q.append(new VungleException(i).getLocalizedMessage());
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#handleWebViewException", q.toString());
        reportErrorAndCloseAd(i);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX WARN: Multi-variable type inference failed */
    private void loadData(OptionsState optionsState) {
        this.cookieMap.put(Cookie.INCENTIVIZED_TEXT_COOKIE, this.repository.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get());
        this.cookieMap.put(Cookie.CONSENT_COOKIE, this.repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get());
        this.cookieMap.put(Cookie.CONFIG_COOKIE, this.repository.load(Cookie.CONFIG_COOKIE, Cookie.class).get());
        if (optionsState != null) {
            String string = optionsState.getString(EXTRA_REPORT);
            Report report2 = TextUtils.isEmpty(string) ? null : (Report) this.repository.load(string, Report.class).get();
            if (report2 != null) {
                this.report = report2;
            }
        }
    }

    private void loadMraid(File file) {
        File file2 = new File(file.getParent());
        StringBuilder sb = new StringBuilder();
        sb.append(file2.getPath());
        final File file3 = new File(ic.l(sb, File.separator, "index.html"));
        this.fileExistenceOperation = AsyncFileUtils.isFileExistAsync(file3, new AsyncFileUtils.FileExistCallback() {
            /* class com.vungle.warren.ui.presenter.MRAIDAdPresenter.AnonymousClass3 */

            @Override // com.vungle.warren.utility.AsyncFileUtils.FileExistCallback
            public void status(boolean z) {
                if (!z) {
                    MRAIDAdPresenter.this.makeBusError(27);
                    MRAIDAdPresenter.this.makeBusError(10);
                    MRAIDAdPresenter.this.adView.close();
                    return;
                }
                WebAdContract.WebAdView webAdView = MRAIDAdPresenter.this.adView;
                StringBuilder q = ic.q("file://");
                q.append(file3.getPath());
                webAdView.showWebsite(q.toString());
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void makeBusError(@VungleException.ExceptionCode int i) {
        AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
        if (eventListener != null) {
            eventListener.onError(new VungleException(i), this.placement.getId());
        }
    }

    private void prepare(OptionsState optionsState) {
        String str;
        this.webClient.setMRAIDDelegate(this);
        this.webClient.setErrorHandler(this);
        StringBuilder sb = new StringBuilder();
        sb.append(this.assetDir.getPath());
        loadMraid(new File(ic.l(sb, File.separator, Advertisement.KEY_TEMPLATE)));
        Cookie cookie = this.cookieMap.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
        if (cookie == null) {
            str = null;
        } else {
            str = cookie.getString("userID");
        }
        if (this.report == null) {
            Report report2 = new Report(this.advertisement, this.placement, System.currentTimeMillis(), str, this.sessionData);
            this.report = report2;
            report2.setTtDownload(this.advertisement.getTtDownload());
            this.repository.save(this.report, this.repoCallback);
        }
        if (this.durationRecorder == null) {
            this.durationRecorder = new DurationRecorder(this.report, this.repository, this.repoCallback);
        }
        Cookie cookie2 = this.cookieMap.get(Cookie.CONSENT_COOKIE);
        if (cookie2 != null) {
            boolean z = cookie2.getBoolean("is_country_data_protected").booleanValue() && VungleApiClient.ConnectionTypeDetail.UNKNOWN.equals(cookie2.getString("consent_status"));
            this.webClient.setConsentStatus(z, cookie2.getString("consent_title"), cookie2.getString("consent_message"), cookie2.getString("button_accept"), cookie2.getString("button_deny"));
            if (z) {
                cookie2.putValue("consent_status", "opted_out_by_timeout");
                cookie2.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
                cookie2.putValue("consent_source", "vungle_modal");
                this.repository.save(cookie2, this.repoCallback);
            }
        }
        int showCloseDelay = this.advertisement.getShowCloseDelay(this.placement.isIncentivized());
        if (showCloseDelay > 0) {
            this.scheduler.schedule(new Runnable() {
                /* class com.vungle.warren.ui.presenter.MRAIDAdPresenter.AnonymousClass2 */

                public void run() {
                    MRAIDAdPresenter.this.backEnabled = true;
                }
            }, (long) showCloseDelay);
        } else {
            this.backEnabled = true;
        }
        this.adView.updateWindow();
        AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
        if (eventListener != null) {
            eventListener.onNext("start", null, this.placement.getId());
        }
    }

    private void reportErrorAndCloseAd(@VungleException.ExceptionCode int i) {
        makeBusError(i);
        closeView();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void detach(@AdContract.AdStopReason int i) {
        AsyncFileUtils.ExistenceOperation existenceOperation = this.fileExistenceOperation;
        if (existenceOperation != null) {
            existenceOperation.cancel();
        }
        stop(i);
        this.webClient.setWebViewObserver(null);
        this.adView.destroyAdView(this.omTracker.stop());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void generateSaveState(OptionsState optionsState) {
        if (optionsState != null) {
            this.repository.save(this.report, this.repoCallback);
            optionsState.put(EXTRA_REPORT, this.report.getId());
            optionsState.put(EXTRA_INCENTIVIZED_SENT, this.sendReportIncentivized.get());
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public boolean handleExit() {
        if (!this.backEnabled) {
            return false;
        }
        this.adView.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        return false;
    }

    @Override // com.vungle.warren.ui.JavascriptBridge.MraidHandler
    public void onMraidAction(String str) {
        str.hashCode();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -314498168:
                if (str.equals(JavascriptBridge.MraidHandler.PRIVACY_ACTION)) {
                    c = 0;
                    break;
                }
                break;
            case 94756344:
                if (str.equals("close")) {
                    c = 1;
                    break;
                }
                break;
            case 1427818632:
                if (str.equals(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return;
            case 1:
                closeView();
                return;
            case 2:
                download();
                return;
            default:
                throw new IllegalArgumentException(ic.i("Unknown action ", str));
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(String str) {
        Report report2 = this.report;
        if (report2 != null) {
            report2.recordError(str);
            this.repository.save(this.report, this.repoCallback);
        }
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#onReceivedError", str);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException(32);
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#onRenderProcessUnresponsive", new VungleException(32).getLocalizedMessage());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void onViewConfigurationChanged() {
        this.adView.updateWindow();
        this.webClient.notifyPropertiesChange(true);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(WebView webView, boolean z) {
        handleWebViewException(31);
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "onWebRenderingProcessGone", new VungleException(31).getLocalizedMessage());
        return true;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.vungle.warren.ui.view.WebViewAPI.MRAIDDelegate
    public boolean processCommand(String str, s60 s60) {
        char c;
        boolean z;
        float f;
        char c2;
        char c3;
        str.hashCode();
        switch (str.hashCode()) {
            case -1912374177:
                if (str.equals(SUCCESSFUL_VIEW)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1422950858:
                if (str.equals(ACTION)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -735200587:
                if (str.equals(ACTION_WITH_VALUE)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -660787472:
                if (str.equals(CONSENT_ACTION)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -511324706:
                if (str.equals(OPEN_PRIVACY)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -418575596:
                if (str.equals(OPEN_NON_MRAID)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -348095344:
                if (str.equals(USE_CUSTOM_PRIVACY)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3417674:
                if (str.equals(OPEN)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3566511:
                if (str.equals(TPAT)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 94756344:
                if (str.equals("close")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1614272768:
                if (str.equals(USE_CUSTOM_CLOSE)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
                if (eventListener != null) {
                    eventListener.onNext(SUCCESSFUL_VIEW, null, this.placement.getId());
                }
                Cookie cookie = this.cookieMap.get(Cookie.CONFIG_COOKIE);
                if (!this.placement.isIncentivized() || cookie == null || !cookie.getBoolean("isReportIncentivizedEnabled").booleanValue() || this.sendReportIncentivized.getAndSet(true)) {
                    return true;
                }
                s60 s602 = new s60();
                s602.i("placement_reference_id", new u60(this.placement.getId()));
                s602.i(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, new u60(this.advertisement.getAppID()));
                s602.i(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, new u60(Long.valueOf(this.report.getAdStartTime())));
                s602.i("user", new u60(this.report.getUserID()));
                this.analytics.ri(s602);
                return true;
            case 1:
                return true;
            case 2:
                String h = s60.n("event").h();
                String h2 = s60.n("value").h();
                this.report.recordAction(h, h2, System.currentTimeMillis());
                this.repository.save(this.report, this.repoCallback);
                if (h.equals("videoViewed")) {
                    try {
                        f = Float.parseFloat(h2);
                    } catch (NumberFormatException unused) {
                        Log.e(TAG, "value for videoViewed is null !");
                        f = 0.0f;
                    }
                    AdContract.AdvertisementPresenter.EventListener eventListener2 = this.bus;
                    if (eventListener2 != null && f > 0.0f && !this.adViewed) {
                        this.adViewed = true;
                        eventListener2.onNext("adViewed", null, this.placement.getId());
                    }
                    long j = this.duration;
                    if (j > 0) {
                        int i = (int) ((f / ((float) j)) * 100.0f);
                        if (i > 0) {
                            AdContract.AdvertisementPresenter.EventListener eventListener3 = this.bus;
                            if (eventListener3 != null) {
                                eventListener3.onNext(ic.f("percentViewed:", i), null, this.placement.getId());
                            }
                            Cookie cookie2 = this.cookieMap.get(Cookie.CONFIG_COOKIE);
                            if (this.placement.isIncentivized() && i > 75 && cookie2 != null && cookie2.getBoolean("isReportIncentivizedEnabled").booleanValue() && !this.sendReportIncentivized.getAndSet(true)) {
                                s60 s603 = new s60();
                                s603.i("placement_reference_id", new u60(this.placement.getId()));
                                s603.i(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, new u60(this.advertisement.getAppID()));
                                s603.i(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, new u60(Long.valueOf(this.report.getAdStartTime())));
                                s603.i("user", new u60(this.report.getUserID()));
                                this.analytics.ri(s603);
                            }
                        }
                        this.durationRecorder.update();
                    }
                }
                if (h.equals("videoLength")) {
                    this.duration = Long.parseLong(h2);
                    reportAction("videoLength", h2);
                    z = true;
                    this.webClient.notifyPropertiesChange(true);
                } else {
                    z = true;
                }
                this.adView.setVisibility(z);
                return z;
            case 3:
                Cookie cookie3 = this.cookieMap.get(Cookie.CONSENT_COOKIE);
                if (cookie3 == null) {
                    cookie3 = new Cookie(Cookie.CONSENT_COOKIE);
                }
                cookie3.putValue("consent_status", s60.n("event").h());
                cookie3.putValue("consent_source", "vungle_modal");
                cookie3.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
                this.repository.save(cookie3, this.repoCallback);
                return true;
            case 4:
                this.adView.open(s60.n(ReportDBAdapter.ReportColumns.COLUMN_URL).h(), new PresenterAppLeftCallback(this.bus, this.placement));
                return true;
            case 5:
            case 7:
                reportAction(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION, null);
                if (OPEN.equalsIgnoreCase(str)) {
                    reportAction("mraidOpen", null);
                } else if (OPEN_NON_MRAID.equalsIgnoreCase(str)) {
                    reportAction("nonMraidOpen", null);
                }
                String h3 = s60.n(ReportDBAdapter.ReportColumns.COLUMN_URL).h();
                if (h3 == null || h3.isEmpty()) {
                    Log.e(TAG, "CTA destination URL is not configured properly");
                } else {
                    this.adView.open(h3, new PresenterAppLeftCallback(this.bus, this.placement));
                }
                AdContract.AdvertisementPresenter.EventListener eventListener4 = this.bus;
                if (eventListener4 == null) {
                    return true;
                }
                eventListener4.onNext(OPEN, "adClick", this.placement.getId());
                return true;
            case 6:
                String h4 = s60.n(USE_CUSTOM_PRIVACY).h();
                h4.hashCode();
                switch (h4.hashCode()) {
                    case 3178655:
                        if (h4.equals("gone")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3569038:
                        if (h4.equals("true")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 97196323:
                        if (h4.equals("false")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                    case 1:
                    case 2:
                        return true;
                    default:
                        throw new IllegalArgumentException(ic.i("Unknown value ", h4));
                }
            case '\b':
                this.analytics.ping(this.advertisement.getTpatUrls(s60.n("event").h()));
                return true;
            case '\t':
                reportAction("mraidClose", null);
                closeView();
                return true;
            case '\n':
                String h5 = s60.n("sdkCloseButton").h();
                h5.hashCode();
                switch (h5.hashCode()) {
                    case -1901805651:
                        if (h5.equals("invisible")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 3178655:
                        if (h5.equals("gone")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 466743410:
                        if (h5.equals("visible")) {
                            c3 = 2;
                            break;
                        }
                        c3 = 65535;
                        break;
                    default:
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                    case 1:
                    case 2:
                        return true;
                    default:
                        throw new IllegalArgumentException(ic.i("Unknown value ", h5));
                }
            default:
                VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#processCommand", "Unknown MRAID Command");
                return false;
        }
    }

    public void reportAction(String str, String str2) {
        if (str.equals("videoLength")) {
            long parseLong = Long.parseLong(str2);
            this.duration = parseLong;
            this.report.setVideoLength(parseLong);
            this.repository.save(this.report, this.repoCallback);
            return;
        }
        this.report.recordAction(str, str2, System.currentTimeMillis());
        this.repository.save(this.report, this.repoCallback);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void restoreFromSave(OptionsState optionsState) {
        if (optionsState != null) {
            boolean z = optionsState.getBoolean(EXTRA_INCENTIVIZED_SENT, false);
            if (z) {
                this.sendReportIncentivized.set(z);
            }
            if (this.report == null) {
                this.adView.close();
                VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#restoreFromSave", "The advertisement was not started and cannot be restored.");
            }
        }
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdPresenter
    public void setAdVisibility(boolean z) {
        this.webClient.setAdVisibility(z);
        if (z) {
            this.durationRecorder.start();
        } else {
            this.durationRecorder.stop();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        this.bus = eventListener;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void start() {
        if (!this.adView.hasWebView()) {
            reportErrorAndCloseAd(31);
            return;
        }
        this.adView.setImmersiveMode();
        this.adView.resumeWeb();
        setAdVisibility(true);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void stop(@AdContract.AdStopReason int i) {
        boolean z = (i & 1) != 0;
        boolean z2 = (i & 2) != 0;
        boolean z3 = (i & 4) != 0;
        this.adView.pauseWeb();
        setAdVisibility(false);
        if (!z && z2 && !this.isDestroying.getAndSet(true)) {
            WebViewAPI webViewAPI = this.webClient;
            String str = null;
            if (webViewAPI != null) {
                webViewAPI.setMRAIDDelegate(null);
            }
            if (z3) {
                reportAction("mraidCloseByApi", null);
            }
            this.repository.save(this.report, this.repoCallback);
            AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
            if (eventListener != null) {
                if (this.report.isCTAClicked()) {
                    str = "isCTAClicked";
                }
                eventListener.onNext("end", str, this.placement.getId());
            }
        }
    }

    public void attach(WebAdContract.WebAdView webAdView, OptionsState optionsState) {
        boolean z = false;
        this.isDestroying.set(false);
        this.adView = webAdView;
        webAdView.setPresenter(this);
        this.omTracker.start();
        int settings = this.advertisement.getAdConfig().getSettings();
        if (settings > 0) {
            if ((settings & 2) == 2) {
                z = true;
            }
            this.backEnabled = z;
        }
        int i = -1;
        int adOrientation = this.advertisement.getAdConfig().getAdOrientation();
        int i2 = 6;
        if (adOrientation == 3) {
            int orientation = this.advertisement.getOrientation();
            if (orientation == 0) {
                i = 7;
            } else if (orientation == 1) {
                i = 6;
            }
            i2 = i;
        } else if (adOrientation == 0) {
            i2 = 7;
        } else if (adOrientation != 1) {
            i2 = 4;
        }
        webAdView.setOrientation(i2);
        prepare(optionsState);
    }
}
