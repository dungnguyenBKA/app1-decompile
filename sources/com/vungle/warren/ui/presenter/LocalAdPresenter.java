package com.vungle.warren.ui.presenter;

import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.vungle.warren.SessionData;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.analytics.AnalyticsEvent;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.Report;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.ui.DurationRecorder;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.PresenterAppLeftCallback;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.LocalAdContract;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.WebViewAPI;
import com.vungle.warren.utility.AsyncFileUtils;
import com.vungle.warren.utility.Scheduler;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.protocol.HTTP;

public class LocalAdPresenter implements LocalAdContract.LocalPresenter, WebViewAPI.WebClientErrorHandler {
    static final String EXTRA_INCENTIVIZED_SENT = "incentivized_sent";
    static final String EXTRA_IN_POST = "in_post_roll";
    static final String EXTRA_IS_MUTED = "is_muted_mode";
    static final String EXTRA_REPORT = "saved_report";
    static final String EXTRA_VIDEO_POSITION = "videoPosition";
    static final String HTTPS_VUNGLE_COM_PRIVACY = "https://vungle.com/privacy/";
    public static final int INCENTIVIZED_TRESHOLD = 75;
    static final String TAG = "LocalAdPresenter";
    private LocalAdContract.LocalView adView;
    private boolean adViewed;
    private Advertisement advertisement;
    private final AdAnalytics analytics;
    private File assetDir;
    private AdContract.AdvertisementPresenter.EventListener bus;
    private AtomicBoolean busy = new AtomicBoolean(false);
    private LinkedList<Advertisement.Checkpoint> checkpointList = new LinkedList<>();
    private final Map<String, Cookie> cookies = new HashMap();
    private String dialogBody = "If you exit now, you will not get your reward";
    private String dialogClose = HTTP.CONN_CLOSE;
    private String dialogContinue = "Continue";
    private String dialogTitle = "Are you sure?";
    private int duration;
    private DurationRecorder durationRecorder;
    private AsyncFileUtils.ExistenceOperation fileExistenceOperation;
    private boolean inPost;
    private AtomicBoolean isDestroying = new AtomicBoolean(false);
    private boolean muted;
    private Placement placement;
    private int progress;
    private Repository.SaveCallback repoCallback = new Repository.SaveCallback() {
        /* class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass1 */
        boolean errorHappened = false;

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onError(Exception exc) {
            if (!this.errorHappened) {
                this.errorHappened = true;
                LocalAdPresenter.this.makeBusError(26);
                VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onError", new VungleException(26).getLocalizedMessage());
                LocalAdPresenter.this.closeAndReport();
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
    private boolean userExitEnabled;
    private int videoPosition;
    private final WebViewAPI webViewAPI;

    public LocalAdPresenter(Advertisement advertisement2, Placement placement2, Repository repository2, Scheduler scheduler2, AdAnalytics adAnalytics, WebViewAPI webViewAPI2, OptionsState optionsState, File file, SessionData sessionData2) {
        this.advertisement = advertisement2;
        this.placement = placement2;
        this.scheduler = scheduler2;
        this.analytics = adAnalytics;
        this.webViewAPI = webViewAPI2;
        this.repository = repository2;
        this.assetDir = file;
        this.sessionData = sessionData2;
        if (advertisement2.getCheckpoints() != null) {
            this.checkpointList.addAll(advertisement2.getCheckpoints());
            Collections.sort(this.checkpointList);
        }
        loadData(optionsState);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void closeAndReport() {
        if (this.busy.get()) {
            Log.w(TAG, "Busy with closing");
            return;
        }
        this.busy.set(true);
        reportAction(JavascriptBridge.MraidHandler.CLOSE_ACTION, null);
        this.scheduler.cancelAll();
        this.adView.close();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void continueWithPostroll() {
        if (this.advertisement.hasPostroll()) {
            playPost();
        } else {
            closeAndReport();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x006e A[Catch:{ ActivityNotFoundException -> 0x007c }] */
    /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void download() {
        /*
        // Method dump skipped, instructions count: 158
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.ui.presenter.LocalAdPresenter.download():void");
    }

    private void handleWebViewException(@VungleException.ExceptionCode int i) {
        LocalAdContract.LocalView localView = this.adView;
        if (localView != null) {
            localView.removeWebView();
        }
        reportErrorAndCloseAd(i);
    }

    private boolean isWebPageBlank() {
        String websiteUrl = this.adView.getWebsiteUrl();
        return TextUtils.isEmpty(websiteUrl) || "about:blank".equalsIgnoreCase(websiteUrl);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.util.Map<java.lang.String, com.vungle.warren.model.Cookie> */
    /* JADX WARN: Multi-variable type inference failed */
    private void loadData(OptionsState optionsState) {
        this.cookies.put(Cookie.INCENTIVIZED_TEXT_COOKIE, this.repository.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get());
        this.cookies.put(Cookie.CONSENT_COOKIE, this.repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get());
        this.cookies.put(Cookie.CONFIG_COOKIE, this.repository.load(Cookie.CONFIG_COOKIE, Cookie.class).get());
        if (optionsState != null) {
            String string = optionsState.getString(EXTRA_REPORT);
            Report report2 = TextUtils.isEmpty(string) ? null : (Report) this.repository.load(string, Report.class).get();
            if (report2 != null) {
                this.report = report2;
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void makeBusError(@VungleException.ExceptionCode int i) {
        AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
        if (eventListener != null) {
            eventListener.onError(new VungleException(i), this.placement.getId());
        }
    }

    private boolean needShowGDPR(Cookie cookie) {
        return cookie != null && cookie.getBoolean("is_country_data_protected").booleanValue() && VungleApiClient.ConnectionTypeDetail.UNKNOWN.equals(cookie.getString("consent_status"));
    }

    private void playPost() {
        File file = new File(this.assetDir.getPath());
        StringBuilder sb = new StringBuilder();
        sb.append(file.getPath());
        final File file2 = new File(ic.l(sb, File.separator, "index.html"));
        this.fileExistenceOperation = AsyncFileUtils.isFileExistAsync(file2, new AsyncFileUtils.FileExistCallback() {
            /* class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass2 */

            @Override // com.vungle.warren.utility.AsyncFileUtils.FileExistCallback
            public void status(boolean z) {
                if (z) {
                    LocalAdContract.LocalView localView = LocalAdPresenter.this.adView;
                    StringBuilder q = ic.q("file://");
                    q.append(file2.getPath());
                    localView.showWebsite(q.toString());
                    LocalAdPresenter.this.analytics.ping(LocalAdPresenter.this.advertisement.getTpatUrls(AnalyticsEvent.Ad.postrollView));
                    LocalAdPresenter.this.inPost = true;
                    return;
                }
                LocalAdPresenter.this.makeBusError(27);
                LocalAdPresenter.this.makeBusError(10);
                VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#playPost", "Error Rendering Postroll");
                LocalAdPresenter.this.closeAndReport();
            }
        });
    }

    private void prepare(OptionsState optionsState) {
        String str;
        restoreFromSave(optionsState);
        Cookie cookie = this.cookies.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
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
        this.webViewAPI.setErrorHandler(this);
        this.adView.showCTAOverlay(this.advertisement.isCtaOverlayEnabled(), this.advertisement.getCtaClickArea());
        AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
        if (eventListener != null) {
            eventListener.onNext("start", null, this.placement.getId());
        }
    }

    private void reportError(String str) {
        this.report.recordError(str);
        this.repository.save(this.report, this.repoCallback);
        makeBusError(27);
        if (this.inPost || !this.advertisement.hasPostroll()) {
            makeBusError(10);
            this.adView.close();
            return;
        }
        playPost();
    }

    private void reportErrorAndCloseAd(@VungleException.ExceptionCode int i) {
        makeBusError(i);
        String simpleName = LocalAdPresenter.class.getSimpleName();
        StringBuilder q = ic.q("WebViewException: ");
        q.append(new VungleException(i).getLocalizedMessage());
        VungleLogger.error(simpleName, q.toString());
        closeAndReport();
    }

    private void showDialog(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        this.adView.pauseVideo();
        this.adView.showDialog(str, str2, str3, str4, onClickListener);
    }

    private void showGDPR(final Cookie cookie) {
        AnonymousClass3 r5 = new DialogInterface.OnClickListener() {
            /* class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass3 */

            public void onClick(DialogInterface dialogInterface, int i) {
                cookie.putValue("consent_status", i == -2 ? Cookie.CONSENT_STATUS_OPTED_OUT : i == -1 ? Cookie.CONSENT_STATUS_OPTED_IN : "opted_out_by_timeout");
                cookie.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
                cookie.putValue("consent_source", "vungle_modal");
                LocalAdPresenter.this.repository.save(cookie, null);
                LocalAdPresenter.this.start();
            }
        };
        cookie.putValue("consent_status", "opted_out_by_timeout");
        cookie.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
        cookie.putValue("consent_source", "vungle_modal");
        this.repository.save(cookie, this.repoCallback);
        showDialog(cookie.getString("consent_title"), cookie.getString("consent_message"), cookie.getString("button_accept"), cookie.getString("button_deny"), r5);
    }

    private void showIncetivizedDialog() {
        String str = this.dialogTitle;
        String str2 = this.dialogBody;
        String str3 = this.dialogContinue;
        String str4 = this.dialogClose;
        Cookie cookie = this.cookies.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
        if (cookie != null) {
            str = cookie.getString("title") == null ? this.dialogTitle : cookie.getString("title");
            str2 = cookie.getString("body") == null ? this.dialogBody : cookie.getString("body");
            str3 = cookie.getString("continue") == null ? this.dialogContinue : cookie.getString("continue");
            str4 = cookie.getString(JavascriptBridge.MraidHandler.CLOSE_ACTION) == null ? this.dialogClose : cookie.getString(JavascriptBridge.MraidHandler.CLOSE_ACTION);
        }
        showDialog(str, str2, str3, str4, new DialogInterface.OnClickListener() {
            /* class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass4 */

            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == -2) {
                    LocalAdPresenter.this.reportAction(AnalyticsEvent.Ad.videoClose, null);
                    LocalAdPresenter.this.continueWithPostroll();
                }
            }
        });
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void detach(@AdContract.AdStopReason int i) {
        AsyncFileUtils.ExistenceOperation existenceOperation = this.fileExistenceOperation;
        if (existenceOperation != null) {
            existenceOperation.cancel();
        }
        stop(i);
        this.adView.destroyAdView(0);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void generateSaveState(OptionsState optionsState) {
        if (optionsState != null) {
            this.repository.save(this.report, this.repoCallback);
            Report report2 = this.report;
            optionsState.put(EXTRA_REPORT, report2 == null ? null : report2.getId());
            optionsState.put(EXTRA_INCENTIVIZED_SENT, this.sendReportIncentivized.get());
            optionsState.put(EXTRA_IN_POST, this.inPost);
            optionsState.put(EXTRA_IS_MUTED, this.muted);
            LocalAdContract.LocalView localView = this.adView;
            optionsState.put(EXTRA_VIDEO_POSITION, (localView == null || !localView.isVideoPlaying()) ? this.videoPosition : this.adView.getVideoPosition());
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public boolean handleExit() {
        if (this.inPost) {
            closeAndReport();
            return true;
        } else if (!this.userExitEnabled) {
            return false;
        } else {
            if (!this.placement.isIncentivized() || this.progress > 75) {
                reportAction(AnalyticsEvent.Ad.videoClose, null);
                if (this.advertisement.hasPostroll()) {
                    playPost();
                    return false;
                }
                closeAndReport();
                return true;
            }
            showIncetivizedDialog();
            return false;
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onDownload() {
        download();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public boolean onMediaError(String str) {
        reportError(str);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onMediaError", "Media Error: " + str);
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
                if (str.equals(JavascriptBridge.MraidHandler.CLOSE_ACTION)) {
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
                closeAndReport();
                return;
            case 2:
                download();
                closeAndReport();
                return;
            default:
                VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onMraidAction", "Unknown MRAID Command");
                throw new IllegalArgumentException(ic.i("Unknown action ", str));
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onMute(boolean z) {
        this.muted = z;
        if (z) {
            reportAction(AnalyticsEvent.Ad.mute, "true");
        } else {
            reportAction(AnalyticsEvent.Ad.unmute, "false");
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onPrivacy() {
        this.adView.open(HTTPS_VUNGLE_COM_PRIVACY, new PresenterAppLeftCallback(this.bus, this.placement));
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onProgressUpdate(int i, float f) {
        this.progress = (int) ((((float) i) / f) * 100.0f);
        this.videoPosition = i;
        this.durationRecorder.update();
        AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
        if (eventListener != null) {
            StringBuilder q = ic.q("percentViewed:");
            q.append(this.progress);
            eventListener.onNext(q.toString(), null, this.placement.getId());
        }
        AdContract.AdvertisementPresenter.EventListener eventListener2 = this.bus;
        if (eventListener2 != null && i > 0 && !this.adViewed) {
            this.adViewed = true;
            eventListener2.onNext("adViewed", null, this.placement.getId());
        }
        reportAction("video_viewed", String.format(Locale.ENGLISH, "%d", Integer.valueOf(i)));
        if (this.progress == 100) {
            if (this.checkpointList.peekLast() != null && this.checkpointList.peekLast().getPercentage() == 100) {
                this.analytics.ping(this.checkpointList.pollLast().getUrls());
            }
            continueWithPostroll();
        }
        this.report.recordProgress(this.videoPosition);
        this.repository.save(this.report, this.repoCallback);
        while (this.checkpointList.peek() != null && this.progress > this.checkpointList.peek().getPercentage()) {
            this.analytics.ping(this.checkpointList.poll().getUrls());
        }
        Cookie cookie = this.cookies.get(Cookie.CONFIG_COOKIE);
        if (this.placement.isIncentivized() && this.progress > 75 && cookie != null && cookie.getBoolean("isReportIncentivizedEnabled").booleanValue() && !this.sendReportIncentivized.getAndSet(true)) {
            s60 s60 = new s60();
            s60.i("placement_reference_id", new u60(this.placement.getId()));
            s60.i(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, new u60(this.advertisement.getAppID()));
            s60.i(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, new u60(Long.valueOf(this.report.getAdStartTime())));
            s60.i("user", new u60(this.report.getUserID()));
            this.analytics.ri(s60);
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(String str) {
        Report report2 = this.report;
        if (report2 != null) {
            report2.recordError(str);
            this.repository.save(this.report, this.repoCallback);
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "onReceivedError", str);
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException(32);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onRenderProcessUnresponsive", new VungleException(32).getLocalizedMessage());
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onVideoStart(int i, float f) {
        reportAction("videoLength", String.format(Locale.ENGLISH, "%d", Integer.valueOf((int) f)));
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void onViewConfigurationChanged() {
        this.webViewAPI.notifyPropertiesChange(true);
        this.adView.refreshDialogIfVisible();
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(WebView webView, boolean z) {
        handleWebViewException(31);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onWebRenderingProcessGone", new VungleException(31).getLocalizedMessage());
        return true;
    }

    public void reportAction(String str, String str2) {
        if (str.equals("videoLength")) {
            int parseInt = Integer.parseInt(str2);
            this.duration = parseInt;
            this.report.setVideoLength((long) parseInt);
            this.repository.save(this.report, this.repoCallback);
            return;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -840405966:
                if (str.equals(AnalyticsEvent.Ad.unmute)) {
                    c = 0;
                    break;
                }
                break;
            case 3363353:
                if (str.equals(AnalyticsEvent.Ad.mute)) {
                    c = 1;
                    break;
                }
                break;
            case 1370606900:
                if (str.equals(AnalyticsEvent.Ad.videoClose)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                this.analytics.ping(this.advertisement.getTpatUrls(str));
                break;
        }
        this.report.recordAction(str, str2, System.currentTimeMillis());
        this.repository.save(this.report, this.repoCallback);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void restoreFromSave(OptionsState optionsState) {
        if (optionsState != null) {
            if (optionsState.getBoolean(EXTRA_INCENTIVIZED_SENT, false)) {
                this.sendReportIncentivized.set(true);
            }
            this.inPost = optionsState.getBoolean(EXTRA_IN_POST, this.inPost);
            this.muted = optionsState.getBoolean(EXTRA_IS_MUTED, this.muted);
            this.videoPosition = optionsState.getInt(EXTRA_VIDEO_POSITION, this.videoPosition).intValue();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        this.bus = eventListener;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void start() {
        this.durationRecorder.start();
        if (!this.adView.hasWebView()) {
            reportErrorAndCloseAd(31);
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#start", new VungleException(31).getLocalizedMessage());
            return;
        }
        this.adView.setImmersiveMode();
        this.adView.resumeWeb();
        Cookie cookie = this.cookies.get(Cookie.CONSENT_COOKIE);
        if (needShowGDPR(cookie)) {
            showGDPR(cookie);
        } else if (this.inPost) {
            if (isWebPageBlank()) {
                playPost();
            }
        } else if (!this.adView.isVideoPlaying() && !this.adView.isDialogVisible()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.assetDir.getPath());
            this.adView.playVideo(new File(ic.l(sb, File.separator, Advertisement.KEY_VIDEO)), this.muted, this.videoPosition);
            int showCloseDelay = this.advertisement.getShowCloseDelay(this.placement.isIncentivized());
            if (showCloseDelay > 0) {
                this.scheduler.schedule(new Runnable() {
                    /* class com.vungle.warren.ui.presenter.LocalAdPresenter.AnonymousClass5 */

                    public void run() {
                        LocalAdPresenter.this.userExitEnabled = true;
                        if (!LocalAdPresenter.this.inPost) {
                            LocalAdPresenter.this.adView.showCloseButton();
                        }
                    }
                }, (long) showCloseDelay);
                return;
            }
            this.userExitEnabled = true;
            this.adView.showCloseButton();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void stop(@AdContract.AdStopReason int i) {
        this.durationRecorder.stop();
        boolean z = false;
        boolean z2 = (i & 1) != 0;
        if ((i & 2) != 0) {
            z = true;
        }
        this.adView.pauseWeb();
        if (this.adView.isVideoPlaying()) {
            this.videoPosition = this.adView.getVideoPosition();
            this.adView.pauseVideo();
        }
        if (z2 || !z) {
            if (this.inPost || z) {
                this.adView.showWebsite("about:blank");
            }
        } else if (!this.isDestroying.getAndSet(true)) {
            String str = null;
            reportAction(JavascriptBridge.MraidHandler.CLOSE_ACTION, null);
            this.scheduler.cancelAll();
            AdContract.AdvertisementPresenter.EventListener eventListener = this.bus;
            if (eventListener != null) {
                if (this.report.isCTAClicked()) {
                    str = "isCTAClicked";
                }
                eventListener.onNext("end", str, this.placement.getId());
            }
        }
    }

    public void attach(LocalAdContract.LocalView localView, OptionsState optionsState) {
        boolean z = false;
        this.isDestroying.set(false);
        this.adView = localView;
        localView.setPresenter(this);
        int settings = this.advertisement.getAdConfig().getSettings();
        if (settings > 0) {
            this.muted = (settings & 1) == 1;
            if ((settings & 2) == 2) {
                z = true;
            }
            this.userExitEnabled = z;
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
        localView.setOrientation(i2);
        prepare(optionsState);
    }
}
