package com.vungle.warren;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.core.app.b;
import com.vungle.warren.AdConfig;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.VungleSettings;
import com.vungle.warren.downloader.CleverCache;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.JsonUtil;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.HttpException;
import com.vungle.warren.network.Response;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.FutureResult;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.CleanupJob;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.ReconfigJob;
import com.vungle.warren.tasks.SendLogsJob;
import com.vungle.warren.tasks.SendReportsJob;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.VungleActivity;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.view.VungleNativeView;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.AppSession;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.TimeoutProvider;
import com.vungle.warren.vision.VisionConfig;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

@Keep
public class Vungle {
    private static final String COM_VUNGLE_SDK = "com.vungle.sdk";
    private static final String TAG = Vungle.class.getCanonicalName();
    static final Vungle _instance = new Vungle();
    private static CacheManager.Listener cacheListener = new CacheManager.Listener() {
        /* class com.vungle.warren.Vungle.AnonymousClass16 */

        @Override // com.vungle.warren.persistence.CacheManager.Listener
        public void onCacheChanged() {
            Vungle vungle = Vungle._instance;
            if (vungle.context != null) {
                Vungle.stopPlaying();
                ServiceLocator instance = ServiceLocator.getInstance(vungle.context);
                CacheManager cacheManager = (CacheManager) instance.getService(CacheManager.class);
                Downloader downloader = (Downloader) instance.getService(Downloader.class);
                if (cacheManager.getCache() != null) {
                    List<DownloadRequest> allRequests = downloader.getAllRequests();
                    String path = cacheManager.getCache().getPath();
                    for (DownloadRequest downloadRequest : allRequests) {
                        if (!downloadRequest.path.startsWith(path)) {
                            downloader.cancel(downloadRequest);
                        }
                    }
                }
                downloader.init();
            }
        }
    };
    private static AtomicBoolean isDepInit = new AtomicBoolean(false);
    private static volatile boolean isInitialized;
    private static AtomicBoolean isInitializing = new AtomicBoolean(false);
    private volatile String appID;
    private final AtomicReference<Consent> ccpaStatus = new AtomicReference<>();
    private final AtomicReference<Consent> consent = new AtomicReference<>();
    private volatile String consentVersion;
    private Context context;
    private j60 gson = new k60().a();
    private AtomicInteger hbpOrdinalViewCount = new AtomicInteger(0);
    private Map<String, Boolean> playOperations = new ConcurrentHashMap();

    @Keep
    public enum Consent {
        OPTED_IN,
        OPTED_OUT
    }

    private Vungle() {
    }

    static Context appContext() {
        Vungle vungle = _instance;
        if (vungle != null) {
            return vungle.context;
        }
        return null;
    }

    public static boolean canPlayAd(final String str) {
        final Context context2 = _instance.context;
        if (context2 == null) {
            Log.e(TAG, "Context is null");
            return false;
        }
        ServiceLocator instance = ServiceLocator.getInstance(context2);
        return Boolean.TRUE.equals(new FutureResult(((Executors) instance.getService(Executors.class)).getApiExecutor().submit(new Callable<Boolean>() {
            /* class com.vungle.warren.Vungle.AnonymousClass8 */

            @Override // java.util.concurrent.Callable
            public Boolean call() {
                if (!Vungle.isInitialized()) {
                    Log.e(Vungle.TAG, "Vungle is not initialized");
                    return Boolean.FALSE;
                }
                Repository repository = (Repository) ServiceLocator.getInstance(context2).getService(Repository.class);
                Placement placement = (Placement) repository.load(str, Placement.class).get();
                if (placement == null || !placement.isValid()) {
                    return Boolean.FALSE;
                }
                Advertisement advertisement = repository.findValidAdvertisementForPlacement(str).get();
                if (advertisement == null) {
                    return Boolean.FALSE;
                }
                if (placement.getPlacementAdType() == 1 || (!AdConfig.AdSize.isDefaultAdSize(placement.getAdSize()) && !placement.getAdSize().equals(advertisement.getAdConfig().getAdSize()))) {
                    return Boolean.FALSE;
                }
                return Boolean.valueOf(Vungle.canPlayAd(advertisement));
            }
        })).get(((TimeoutProvider) instance.getService(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS));
    }

    private static void clearAdvertisements() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            return;
        }
        final ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        ((Executors) instance.getService(Executors.class)).getBackgroundExecutor().execute(new Runnable() {
            /* class com.vungle.warren.Vungle.AnonymousClass12 */

            public void run() {
                ((Downloader) instance.getService(Downloader.class)).cancelAll();
                ((AdLoader) instance.getService(AdLoader.class)).clear();
                final Repository repository = (Repository) instance.getService(Repository.class);
                ((Executors) instance.getService(Executors.class)).getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.Vungle.AnonymousClass12.AnonymousClass1 */

                    public void run() {
                        List<Advertisement> list = (List) repository.loadAll(Advertisement.class).get();
                        if (list != null) {
                            for (Advertisement advertisement : list) {
                                try {
                                    repository.deleteAdvertisement(advertisement.getId());
                                } catch (DatabaseHelper.DBException unused) {
                                }
                            }
                        }
                    }
                });
            }
        });
    }

    private static void clearCache() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            return;
        }
        final ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        ((Executors) instance.getService(Executors.class)).getBackgroundExecutor().execute(new Runnable() {
            /* class com.vungle.warren.Vungle.AnonymousClass11 */

            public void run() {
                ((Downloader) instance.getService(Downloader.class)).cancelAll();
                ((AdLoader) instance.getService(AdLoader.class)).clear();
                ((Repository) instance.getService(Repository.class)).clearAllData();
                Vungle vungle = Vungle._instance;
                vungle.playOperations.clear();
                vungle.ccpaStatus.set(null);
                vungle.configure(((RuntimeValues) instance.getService(RuntimeValues.class)).initCallback.get(), true);
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void configure(InitCallback initCallback, boolean z) {
        final AdLoader adLoader;
        Object obj;
        JobRunner jobRunner;
        VisionConfig visionConfig;
        Object obj2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z2;
        try {
            Context context2 = this.context;
            if (context2 != null) {
                ServiceLocator instance = ServiceLocator.getInstance(context2);
                VungleApiClient vungleApiClient = (VungleApiClient) instance.getService(VungleApiClient.class);
                vungleApiClient.setAppId(this.appID);
                Repository repository = (Repository) instance.getService(Repository.class);
                JobRunner jobRunner2 = (JobRunner) instance.getService(JobRunner.class);
                Response config = vungleApiClient.config();
                if (config == null) {
                    onInitError(initCallback, new VungleException(2));
                    isInitializing.set(false);
                } else if (!config.isSuccessful()) {
                    long retryAfterHeaderValue = vungleApiClient.getRetryAfterHeaderValue(config);
                    if (retryAfterHeaderValue > 0) {
                        jobRunner2.execute(ReconfigJob.makeJobInfo(_instance.appID).setDelay(retryAfterHeaderValue));
                        onInitError(initCallback, new VungleException(14));
                        isInitializing.set(false);
                        return;
                    }
                    onInitError(initCallback, new VungleException(3));
                    isInitializing.set(false);
                } else {
                    final SharedPreferences sharedPreferences = this.context.getSharedPreferences(COM_VUNGLE_SDK, 0);
                    if (!sharedPreferences.getBoolean("reported", false)) {
                        vungleApiClient.reportNew().enqueue(new Callback<s60>() {
                            /* class com.vungle.warren.Vungle.AnonymousClass3 */

                            @Override // com.vungle.warren.network.Callback
                            public void onFailure(Call<s60> call, Throwable th) {
                            }

                            @Override // com.vungle.warren.network.Callback
                            public void onResponse(Call<s60> call, Response<s60> response) {
                                if (response.isSuccessful()) {
                                    SharedPreferences.Editor edit = sharedPreferences.edit();
                                    edit.putBoolean("reported", true);
                                    edit.apply();
                                    String unused = Vungle.TAG;
                                }
                            }
                        });
                    }
                    s60 s60 = (s60) config.body();
                    m60 o = s60.o("placements");
                    if (o == null) {
                        onInitError(initCallback, new VungleException(3));
                        isInitializing.set(false);
                        return;
                    }
                    CleverCacheSettings fromJson = CleverCacheSettings.fromJson(s60);
                    Downloader downloader = (Downloader) instance.getService(Downloader.class);
                    if (fromJson != null) {
                        CleverCacheSettings deserializeFromString = CleverCacheSettings.deserializeFromString(sharedPreferences.getString(CleverCache.CC_DIR, null));
                        if (deserializeFromString != null) {
                            if (deserializeFromString.getTimestamp() == fromJson.getTimestamp()) {
                                z2 = false;
                                if (!fromJson.isEnabled() || z2) {
                                    downloader.clearCache();
                                }
                                downloader.setCacheEnabled(fromJson.isEnabled());
                                sharedPreferences.edit().putString(CleverCache.CC_DIR, fromJson.serializeToString()).apply();
                            }
                        }
                        z2 = true;
                        downloader.clearCache();
                        downloader.setCacheEnabled(fromJson.isEnabled());
                        sharedPreferences.edit().putString(CleverCache.CC_DIR, fromJson.serializeToString()).apply();
                    } else {
                        downloader.setCacheEnabled(true);
                    }
                    AdLoader adLoader2 = (AdLoader) instance.getService(AdLoader.class);
                    ArrayList arrayList = new ArrayList();
                    Iterator<p60> it = o.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new Placement(it.next().e()));
                    }
                    repository.setValidPlacements(arrayList);
                    if (s60.q("gdpr")) {
                        Cookie cookie = (Cookie) repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get();
                        if (cookie == null) {
                            cookie = new Cookie(Cookie.CONSENT_COOKIE);
                            cookie.putValue("consent_status", VungleApiClient.ConnectionTypeDetail.UNKNOWN);
                            cookie.putValue("consent_source", "no_interaction");
                            cookie.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, 0L);
                        }
                        s60 p = s60.p("gdpr");
                        boolean z3 = JsonUtil.hasNonNull(p, "is_country_data_protected") && p.n("is_country_data_protected").a();
                        String h = JsonUtil.hasNonNull(p, "consent_title") ? p.n("consent_title").h() : "";
                        if (JsonUtil.hasNonNull(p, "consent_message")) {
                            str = p.n("consent_message").h();
                        } else {
                            str = "";
                        }
                        if (JsonUtil.hasNonNull(p, "consent_message_version")) {
                            str2 = p.n("consent_message_version").h();
                        } else {
                            str2 = "";
                        }
                        if (JsonUtil.hasNonNull(p, "button_accept")) {
                            str3 = p.n("button_accept").h();
                        } else {
                            str3 = "";
                        }
                        adLoader = adLoader2;
                        if (JsonUtil.hasNonNull(p, "button_deny")) {
                            str4 = p.n("button_deny").h();
                        } else {
                            str4 = "";
                        }
                        cookie.putValue("is_country_data_protected", Boolean.valueOf(z3));
                        if (TextUtils.isEmpty(h)) {
                            h = "Targeted Ads";
                        }
                        cookie.putValue("consent_title", h);
                        if (TextUtils.isEmpty(str)) {
                            str = "To receive more relevant ad content based on your interactions with our ads, click \"I Consent\" below. Either way, you will see the same amount of ads.";
                        }
                        cookie.putValue("consent_message", str);
                        if (!"publisher".equalsIgnoreCase(cookie.getString("consent_source"))) {
                            if (TextUtils.isEmpty(str2)) {
                                str5 = "";
                            } else {
                                str5 = str2;
                            }
                            cookie.putValue("consent_message_version", str5);
                        }
                        if (TextUtils.isEmpty(str3)) {
                            str3 = "I Consent";
                        }
                        cookie.putValue("button_accept", str3);
                        if (TextUtils.isEmpty(str4)) {
                            str4 = "I Do Not Consent";
                        }
                        cookie.putValue("button_deny", str4);
                        repository.save(cookie);
                    } else {
                        adLoader = adLoader2;
                    }
                    if (s60.q("logging")) {
                        obj = LogManager.class;
                        LogManager logManager = (LogManager) instance.getService(obj);
                        s60 p2 = s60.p("logging");
                        logManager.setLoggingEnabled(JsonUtil.hasNonNull(p2, "enabled") ? p2.n("enabled").a() : false);
                    } else {
                        obj = LogManager.class;
                    }
                    if (s60.q("crash_report")) {
                        LogManager logManager2 = (LogManager) instance.getService(obj);
                        s60 p3 = s60.p("crash_report");
                        logManager2.updateCrashReportConfig(JsonUtil.hasNonNull(p3, "enabled") ? p3.n("enabled").a() : false, JsonUtil.hasNonNull(p3, "collect_filter") ? p3.n("collect_filter").h() : LogManager.sDefaultCollectFilter, JsonUtil.hasNonNull(p3, "max_send_amount") ? p3.n("max_send_amount").d() : 5);
                    }
                    int i = 900;
                    if (s60.q("session")) {
                        s60 p4 = s60.p("session");
                        if (p4.q("timeout")) {
                            i = p4.n("timeout").d();
                        }
                    }
                    if (s60.q("ri")) {
                        Cookie cookie2 = (Cookie) repository.load(Cookie.CONFIG_COOKIE, Cookie.class).get();
                        if (cookie2 == null) {
                            cookie2 = new Cookie(Cookie.CONFIG_COOKIE);
                        }
                        cookie2.putValue("isReportIncentivizedEnabled", Boolean.valueOf(s60.p("ri").n("enabled").a()));
                        repository.save(cookie2);
                    }
                    if (s60.q("config")) {
                        jobRunner = jobRunner2;
                        jobRunner.execute(ReconfigJob.makeJobInfo(this.appID).setDelay(s60.p("config").n("refresh_time").g()));
                    } else {
                        jobRunner = jobRunner2;
                    }
                    try {
                        VisionController visionController = (VisionController) instance.getService(VisionController.class);
                        if (JsonUtil.hasNonNull(s60, "vision")) {
                            j60 j60 = this.gson;
                            s60 p5 = s60.p("vision");
                            Objects.requireNonNull(j60);
                            if (p5 == null) {
                                obj2 = null;
                            } else {
                                obj2 = j60.b(new i80(p5), VisionConfig.class);
                            }
                            visionConfig = (VisionConfig) b.P0(VisionConfig.class).cast(obj2);
                        } else {
                            visionConfig = new VisionConfig();
                        }
                        visionController.setConfig(visionConfig);
                    } catch (DatabaseHelper.DBException unused) {
                        Log.e(TAG, "not able to apply vision data config");
                    }
                    isInitialized = true;
                    initCallback.onSuccess();
                    VungleLogger.debug("Vungle#init", "onSuccess");
                    isInitializing.set(false);
                    SessionData sessionData = new SessionData();
                    sessionData.setInitTimeStamp(System.currentTimeMillis());
                    sessionData.setTimeout((long) i);
                    ((RuntimeValues) ServiceLocator.getInstance(this.context).getService(RuntimeValues.class)).sessionData.set(sessionData);
                    ((AppSession) ServiceLocator.getInstance(this.context).getService(AppSession.class)).setSessionData(sessionData).setSessionCallback(new AppSession.SessionCallback() {
                        /* class com.vungle.warren.Vungle.AnonymousClass4 */

                        @Override // com.vungle.warren.utility.AppSession.SessionCallback
                        public void onSessionTimeout() {
                            Vungle._instance.hbpOrdinalViewCount.set(0);
                        }
                    }).observe();
                    Collection<Placement> collection = repository.loadValidPlacements().get();
                    jobRunner.execute(CleanupJob.makeJobInfo());
                    if (collection != null) {
                        final ArrayList arrayList2 = new ArrayList(collection);
                        Collections.sort(arrayList2, new Comparator<Placement>() {
                            /* class com.vungle.warren.Vungle.AnonymousClass5 */

                            public int compare(Placement placement, Placement placement2) {
                                return Integer.valueOf(placement.getAutoCachePriority()).compareTo(Integer.valueOf(placement2.getAutoCachePriority()));
                            }
                        });
                        ((Executors) instance.getService(Executors.class)).getUIExecutor().execute(new Runnable() {
                            /* class com.vungle.warren.Vungle.AnonymousClass6 */

                            public void run() {
                                for (Placement placement : arrayList2) {
                                    if (placement.isAutoCached()) {
                                        adLoader.loadEndless(placement, 0);
                                    }
                                }
                            }
                        });
                    }
                    jobRunner.execute(SendReportsJob.makeJobInfo(!z));
                    jobRunner.execute(SendLogsJob.makeJobInfo());
                }
            } else {
                throw new IllegalArgumentException("Context is null");
            }
        } catch (Throwable th) {
            isInitialized = false;
            isInitializing.set(false);
            Log.e(TAG, Log.getStackTraceString(th));
            if (th instanceof HttpException) {
                onInitError(initCallback, new VungleException(3));
            } else if (th instanceof DatabaseHelper.DBException) {
                onInitError(initCallback, new VungleException(26));
            } else if ((th instanceof UnknownHostException) || (th instanceof SecurityException)) {
                onInitError(initCallback, new VungleException(33));
            } else {
                onInitError(initCallback, new VungleException(2));
            }
        }
    }

    protected static void deInit() {
        Vungle vungle = _instance;
        Context context2 = vungle.context;
        if (context2 != null) {
            ServiceLocator instance = ServiceLocator.getInstance(context2);
            if (instance.isCreated(CacheManager.class)) {
                ((CacheManager) instance.getService(CacheManager.class)).removeListener(cacheListener);
            }
            if (instance.isCreated(Downloader.class)) {
                ((Downloader) instance.getService(Downloader.class)).cancelAll();
            }
            if (instance.isCreated(AdLoader.class)) {
                ((AdLoader) instance.getService(AdLoader.class)).clear();
            }
            vungle.playOperations.clear();
        }
        ServiceLocator.deInit();
        isInitialized = false;
        isDepInit.set(false);
        isInitializing.set(false);
    }

    static Context getAppContext() {
        return _instance.context;
    }

    public static String getAvailableBidTokens(final Context context2, final int i) {
        if (context2 == null) {
            Log.e(TAG, "Context is null");
            return null;
        }
        ServiceLocator instance = ServiceLocator.getInstance(context2);
        return (String) new FutureResult(((Executors) instance.getService(Executors.class)).getApiExecutor().submit(new Callable<String>() {
            /* class com.vungle.warren.Vungle.AnonymousClass15 */

            @Override // java.util.concurrent.Callable
            public String call() {
                Vungle vungle = Vungle._instance;
                vungle.hbpOrdinalViewCount.incrementAndGet();
                List<String> list = ((Repository) ServiceLocator.getInstance(context2).getService(Repository.class)).getAvailableBidTokens(i).get();
                StringBuilder r = ic.r((list == null || list.isEmpty()) ? "" : TextUtils.join(",", list), ":");
                r.append(vungle.hbpOrdinalViewCount.toString());
                return ic.j("2", ":", new String(Base64.encode(r.toString().getBytes(), 2), Charset.defaultCharset()));
            }
        })).get(((TimeoutProvider) instance.getService(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
    }

    public static Consent getCCPAStatus() {
        return _instance.ccpaStatus.get();
    }

    /* access modifiers changed from: private */
    public static Consent getConsent(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return Cookie.CONSENT_STATUS_OPTED_IN.equals(cookie.getString("consent_status")) ? Consent.OPTED_IN : Consent.OPTED_OUT;
    }

    public static String getConsentMessageVersion() {
        return _instance.consentVersion;
    }

    public static Consent getConsentStatus() {
        if (!isInitialized() || !isDepInit.get()) {
            return _instance.consent.get();
        }
        Vungle vungle = _instance;
        ServiceLocator instance = ServiceLocator.getInstance(vungle.context);
        Cookie cookie = (Cookie) ((Repository) instance.getService(Repository.class)).load(Cookie.CONSENT_COOKIE, Cookie.class).get(((TimeoutProvider) instance.getService(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        if (cookie == null) {
            return null;
        }
        String string = cookie.getString("consent_status");
        string.hashCode();
        char c = 65535;
        switch (string.hashCode()) {
            case -83053070:
                if (string.equals(Cookie.CONSENT_STATUS_OPTED_IN)) {
                    c = 0;
                    break;
                }
                break;
            case 1230717015:
                if (string.equals("opted_out_by_timeout")) {
                    c = 1;
                    break;
                }
                break;
            case 1720328225:
                if (string.equals(Cookie.CONSENT_STATUS_OPTED_OUT)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                AtomicReference<Consent> atomicReference = vungle.consent;
                Consent consent2 = Consent.OPTED_IN;
                atomicReference.set(consent2);
                return consent2;
            case 1:
            case 2:
                AtomicReference<Consent> atomicReference2 = vungle.consent;
                Consent consent3 = Consent.OPTED_OUT;
                atomicReference2.set(consent3);
                return consent3;
            default:
                return null;
        }
    }

    public static VungleNativeAd getNativeAd(String str, AdConfig adConfig, PlayAdCallback playAdCallback) {
        if (adConfig == null) {
            adConfig = new AdConfig();
        }
        if (AdConfig.AdSize.isDefaultAdSize(adConfig.getAdSize())) {
            return getNativeAdInternal(str, adConfig, playAdCallback);
        }
        if (playAdCallback == null) {
            return null;
        }
        Log.e(TAG, "Please use Banners.getBanner(... ) to retrieve Banner Ad");
        playAdCallback.onError(str, new VungleException(29));
        return null;
    }

    static VungleNativeView getNativeAdInternal(String str, AdConfig adConfig, PlayAdCallback playAdCallback) {
        Vungle vungle = _instance;
        Context context2 = vungle.context;
        if (context2 == null) {
            Log.e(TAG, "Vungle is not initialized, returned VungleNativeAd = null");
            if (playAdCallback != null) {
                playAdCallback.onError(str, new VungleException(9));
            }
            return null;
        }
        ServiceLocator instance = ServiceLocator.getInstance(context2);
        AdLoader adLoader = (AdLoader) instance.getService(AdLoader.class);
        if (!Boolean.TRUE.equals(vungle.playOperations.get(str)) && !adLoader.isLoading(str)) {
            return new VungleNativeView(vungle.context.getApplicationContext(), str, adConfig, (PresentationFactory) instance.getService(PresentationFactory.class), new AdEventListener(str, vungle.playOperations, playAdCallback, (Repository) instance.getService(Repository.class), adLoader, (JobRunner) instance.getService(JobRunner.class), (VisionController) instance.getService(VisionController.class), null, null));
        }
        String str2 = TAG;
        StringBuilder q = ic.q("Playing or Loading operation ongoing. Playing ");
        q.append(vungle.playOperations.get(str));
        q.append(" Loading: ");
        q.append(adLoader.isLoading(str));
        Log.e(str2, q.toString());
        if (playAdCallback != null) {
            playAdCallback.onError(str, new VungleException(8));
        }
        return null;
    }

    static Collection<Placement> getValidPlacementModels() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized return empty placements list");
            return Collections.emptyList();
        }
        ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        Collection<Placement> collection = ((Repository) instance.getService(Repository.class)).loadValidPlacements().get(((TimeoutProvider) instance.getService(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        return collection == null ? Collections.emptyList() : collection;
    }

    public static Collection<String> getValidPlacements() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized return empty placements list");
            return Collections.emptyList();
        }
        ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        Collection<String> collection = ((Repository) instance.getService(Repository.class)).getValidPlacementIds().get(((TimeoutProvider) instance.getService(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        return collection == null ? Collections.emptyList() : collection;
    }

    @Deprecated
    public static void init(Collection<String> collection, String str, Context context2, InitCallback initCallback) {
        init(str, context2, initCallback, new VungleSettings.Builder().build());
    }

    public static boolean isInitialized() {
        return isInitialized && _instance.context != null;
    }

    public static void loadAd(String str, LoadAdCallback loadAdCallback) {
        loadAd(str, new AdConfig(), loadAdCallback);
    }

    static void loadAdInternal(String str, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            if (loadAdCallback != null) {
                onLoadError(str, loadAdCallback, new VungleException(9));
                return;
            }
            return;
        }
        ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        LoadAdCallbackWrapper loadAdCallbackWrapper = new LoadAdCallbackWrapper(((Executors) instance.getService(Executors.class)).getUIExecutor(), loadAdCallback);
        AdLoader adLoader = (AdLoader) instance.getService(AdLoader.class);
        if (adConfig == null) {
            adConfig = new AdConfig();
        }
        adLoader.load(str, adConfig, loadAdCallbackWrapper);
    }

    /* access modifiers changed from: private */
    public static void onInitError(InitCallback initCallback, VungleException vungleException) {
        if (initCallback != null) {
            initCallback.onError(vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#init", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    private static void onLoadError(String str, LoadAdCallback loadAdCallback, VungleException vungleException) {
        if (loadAdCallback != null) {
            loadAdCallback.onError(str, vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#loadAd", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    /* access modifiers changed from: private */
    public static void onPlayError(String str, PlayAdCallback playAdCallback, VungleException vungleException) {
        if (playAdCallback != null) {
            playAdCallback.onError(str, vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#playAd", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    public static void playAd(final String str, final AdConfig adConfig, PlayAdCallback playAdCallback) {
        VungleLogger.debug("Vungle#playAd", "playAd call invoked");
        if (!isInitialized()) {
            Log.e(TAG, "Locator is not initialized");
            if (playAdCallback != null) {
                onPlayError(str, playAdCallback, new VungleException(9));
                return;
            }
            return;
        }
        ServiceLocator instance = ServiceLocator.getInstance(_instance.context);
        final Executors executors = (Executors) instance.getService(Executors.class);
        final Repository repository = (Repository) instance.getService(Repository.class);
        final AdLoader adLoader = (AdLoader) instance.getService(AdLoader.class);
        final VungleApiClient vungleApiClient = (VungleApiClient) instance.getService(VungleApiClient.class);
        final PlayAdCallbackWrapper playAdCallbackWrapper = new PlayAdCallbackWrapper(executors.getUIExecutor(), playAdCallback);
        executors.getBackgroundExecutor().execute(new Runnable() {
            /* class com.vungle.warren.Vungle.AnonymousClass9 */

            public void run() {
                String str;
                Boolean bool = Boolean.TRUE;
                Vungle vungle = Vungle._instance;
                if (bool.equals(vungle.playOperations.get(str)) || adLoader.isLoading(str)) {
                    Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(8));
                    return;
                }
                final Placement placement = (Placement) repository.load(str, Placement.class).get();
                if (placement == null) {
                    Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(13));
                } else if (AdConfig.AdSize.isBannerAdSize(placement.getAdSize())) {
                    Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(28));
                } else {
                    final boolean z = false;
                    final Advertisement advertisement = repository.findValidAdvertisementForPlacement(str).get();
                    try {
                        if (!Vungle.canPlayAd(advertisement)) {
                            if (advertisement != null && advertisement.getState() == 1) {
                                repository.saveAndApplyState(advertisement, str, 4);
                                if (placement.isAutoCached()) {
                                    adLoader.loadEndless(placement, 0);
                                }
                            }
                            z = true;
                        } else {
                            advertisement.configure(adConfig);
                            repository.save(advertisement);
                        }
                        if (vungle.context == null) {
                            return;
                        }
                        if (vungleApiClient.canCallWillPlayAd()) {
                            VungleApiClient vungleApiClient = vungleApiClient;
                            String id = placement.getId();
                            boolean isAutoCached = placement.isAutoCached();
                            if (z) {
                                str = "";
                            } else {
                                str = advertisement.getAdToken();
                            }
                            vungleApiClient.willPlayAd(id, isAutoCached, str).enqueue(new Callback<s60>() {
                                /* class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1 */

                                @Override // com.vungle.warren.network.Callback
                                public void onFailure(Call<s60> call, Throwable th) {
                                    executors.getBackgroundExecutor().execute(new Runnable() {
                                        /* class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1.AnonymousClass2 */

                                        public void run() {
                                            AnonymousClass1 r0 = AnonymousClass1.this;
                                            if (z) {
                                                AnonymousClass9 r02 = AnonymousClass9.this;
                                                Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(1));
                                                return;
                                            }
                                            AnonymousClass9 r1 = AnonymousClass9.this;
                                            Vungle.renderAd(str, playAdCallbackWrapper, placement, advertisement);
                                        }
                                    });
                                }

                                @Override // com.vungle.warren.network.Callback
                                public void onResponse(Call<s60> call, final Response<s60> response) {
                                    executors.getBackgroundExecutor().execute(new Runnable() {
                                        /* class com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1.AnonymousClass1 */

                                        /* JADX WARNING: Removed duplicated region for block: B:21:0x006f  */
                                        /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
                                        /* Code decompiled incorrectly, please refer to instructions dump. */
                                        public void run() {
                                            /*
                                            // Method dump skipped, instructions count: 155
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.Vungle.AnonymousClass9.AnonymousClass1.AnonymousClass1.run():void");
                                        }
                                    });
                                }
                            });
                        } else if (z) {
                            Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(1));
                        } else {
                            Vungle.renderAd(str, playAdCallbackWrapper, placement, advertisement);
                        }
                    } catch (DatabaseHelper.DBException unused) {
                        Vungle.onPlayError(str, playAdCallbackWrapper, new VungleException(26));
                    }
                }
            }
        });
    }

    static void reConfigure() {
        Vungle vungle = _instance;
        Context context2 = vungle.context;
        if (context2 != null) {
            ServiceLocator instance = ServiceLocator.getInstance(context2);
            Executors executors = (Executors) instance.getService(Executors.class);
            final RuntimeValues runtimeValues = (RuntimeValues) instance.getService(RuntimeValues.class);
            if (isInitialized()) {
                executors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.Vungle.AnonymousClass2 */

                    public void run() {
                        Vungle._instance.configure(runtimeValues.initCallback.get(), true);
                    }
                });
            } else {
                init(vungle.appID, vungle.context, runtimeValues.initCallback.get());
            }
        }
    }

    /* access modifiers changed from: private */
    public static synchronized void renderAd(String str, PlayAdCallback playAdCallback, Placement placement, Advertisement advertisement) {
        synchronized (Vungle.class) {
            if (!isInitialized()) {
                Log.e(TAG, "Sdk is not initilized");
                return;
            }
            Vungle vungle = _instance;
            ServiceLocator instance = ServiceLocator.getInstance(vungle.context);
            AdActivity.setEventListener(new AdEventListener(str, vungle.playOperations, playAdCallback, (Repository) instance.getService(Repository.class), (AdLoader) instance.getService(AdLoader.class), (JobRunner) instance.getService(JobRunner.class), (VisionController) instance.getService(VisionController.class), placement, advertisement) {
                /* class com.vungle.warren.Vungle.AnonymousClass10 */

                /* access modifiers changed from: protected */
                @Override // com.vungle.warren.AdEventListener
                public void onFinished() {
                    super.onFinished();
                    AdActivity.setEventListener(null);
                }
            });
            Intent intent = new Intent(vungle.context, VungleActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("placement", str);
            if (Build.VERSION.SDK_INT >= 29) {
                vungle.context.startActivity(intent);
            } else {
                ActivityManager.startWhenForeground(vungle.context, intent, null);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void saveGDPRConsent(final Repository repository, final Consent consent2, final String str) {
        repository.load(Cookie.CONSENT_COOKIE, Cookie.class, new Repository.LoadCallback<Cookie>() {
            /* class com.vungle.warren.Vungle.AnonymousClass13 */

            public void onLoaded(Cookie cookie) {
                if (cookie == null) {
                    cookie = new Cookie(Cookie.CONSENT_COOKIE);
                }
                cookie.putValue("consent_status", consent2 == Consent.OPTED_IN ? Cookie.CONSENT_STATUS_OPTED_IN : Cookie.CONSENT_STATUS_OPTED_OUT);
                cookie.putValue(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
                cookie.putValue("consent_source", "publisher");
                String str = str;
                if (str == null) {
                    str = "";
                }
                cookie.putValue("consent_message_version", str);
                repository.save(cookie, null, false);
            }
        });
    }

    public static void setHeaderBiddingCallback(HeaderBiddingCallback headerBiddingCallback) {
        Context context2 = _instance.context;
        if (context2 != null) {
            ServiceLocator instance = ServiceLocator.getInstance(context2);
            ((RuntimeValues) instance.getService(RuntimeValues.class)).headerBiddingCallback.set(new HeaderBiddingCallbackWrapper(((Executors) instance.getService(Executors.class)).getUIExecutor(), headerBiddingCallback));
        }
    }

    public static void setIncentivizedFields(final String str, final String str2, final String str3, final String str4, final String str5) {
        Context context2 = _instance.context;
        if (context2 == null) {
            Log.e(TAG, "Vungle is not initialized, context is null");
            return;
        }
        final ServiceLocator instance = ServiceLocator.getInstance(context2);
        ((Executors) instance.getService(Executors.class)).getBackgroundExecutor().execute(new Runnable() {
            /* class com.vungle.warren.Vungle.AnonymousClass7 */

            public void run() {
                if (!Vungle.isInitialized()) {
                    Log.e(Vungle.TAG, "Vungle is not initialized");
                    return;
                }
                Repository repository = (Repository) instance.getService(Repository.class);
                Cookie cookie = (Cookie) repository.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get();
                if (cookie == null) {
                    cookie = new Cookie(Cookie.INCENTIVIZED_TEXT_COOKIE);
                }
                boolean z = false;
                boolean z2 = true;
                if (!TextUtils.isEmpty(str2)) {
                    cookie.putValue("title", str2);
                    z = true;
                }
                if (!TextUtils.isEmpty(str3)) {
                    cookie.putValue("body", str3);
                    z = true;
                }
                if (!TextUtils.isEmpty(str4)) {
                    cookie.putValue("continue", str4);
                    z = true;
                }
                if (!TextUtils.isEmpty(str5)) {
                    cookie.putValue(JavascriptBridge.MraidHandler.CLOSE_ACTION, str5);
                    z = true;
                }
                if (!TextUtils.isEmpty(str)) {
                    cookie.putValue("userID", str);
                } else {
                    z2 = z;
                }
                if (z2) {
                    try {
                        repository.save(cookie);
                    } catch (DatabaseHelper.DBException e) {
                        Log.e(Vungle.TAG, "Cannot save incentivized cookie", e);
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public static void stopPlaying() {
        Vungle vungle = _instance;
        if (vungle.context != null) {
            Intent intent = new Intent(AdContract.AdvertisementBus.ACTION);
            intent.putExtra(AdContract.AdvertisementBus.COMMAND, AdContract.AdvertisementBus.STOP_ALL);
            c4.b(vungle.context).d(intent);
        }
    }

    public static void updateCCPAStatus(Consent consent2) {
        if (consent2 == null) {
            Log.e(TAG, "Unable to update CCPA status, Invalid input parameter.");
            return;
        }
        Vungle vungle = _instance;
        vungle.ccpaStatus.set(consent2);
        if (!isInitialized() || !isDepInit.get()) {
            Log.e(TAG, "Vungle is not initialized");
        } else {
            updateCCPAStatus((Repository) ServiceLocator.getInstance(vungle.context).getService(Repository.class), consent2);
        }
    }

    public static void updateConsentStatus(Consent consent2, String str) {
        if (consent2 == null) {
            Log.e(TAG, "Cannot set consent with a null consent, please check your code");
            return;
        }
        Vungle vungle = _instance;
        vungle.consent.set(consent2);
        vungle.consentVersion = str;
        if (!isInitialized() || !isDepInit.get()) {
            Log.e(TAG, "Vungle is not initialized");
        } else {
            saveGDPRConsent((Repository) ServiceLocator.getInstance(vungle.context).getService(Repository.class), vungle.consent.get(), vungle.consentVersion);
        }
    }

    /* access modifiers changed from: private */
    public static Consent getCCPAStatus(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return Cookie.CONSENT_STATUS_OPTED_OUT.equals(cookie.getString(Cookie.CCPA_CONSENT_STATUS)) ? Consent.OPTED_OUT : Consent.OPTED_IN;
    }

    /* access modifiers changed from: private */
    public static String getConsentMessageVersion(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return cookie.getString("consent_message_version");
    }

    public static void init(String str, Context context2, InitCallback initCallback) {
        init(str, context2, initCallback, new VungleSettings.Builder().build());
    }

    public static void loadAd(String str, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        VungleLogger.debug("Vungle#loadAd", "loadAd API call invoked");
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            if (loadAdCallback != null) {
                onLoadError(str, loadAdCallback, new VungleException(9));
                return;
            }
            return;
        }
        if (!(adConfig == null || AdConfig.AdSize.isDefaultAdSize(adConfig.getAdSize()) || loadAdCallback == null)) {
            onLoadError(str, loadAdCallback, new VungleException(29));
        }
        loadAdInternal(str, adConfig, loadAdCallback);
    }

    public static void init(final String str, final Context context2, InitCallback initCallback, VungleSettings vungleSettings) {
        VungleLogger.debug("Vungle#init", "init request");
        if (initCallback == null) {
            throw new IllegalArgumentException("A valid InitCallback required to ensure API calls are being made after initialize is successful");
        } else if (context2 == null) {
            initCallback.onError(new VungleException(6));
        } else {
            final RuntimeValues runtimeValues = (RuntimeValues) ServiceLocator.getInstance(context2).getService(RuntimeValues.class);
            runtimeValues.settings.set(vungleSettings);
            final ServiceLocator instance = ServiceLocator.getInstance(context2);
            Executors executors = (Executors) instance.getService(Executors.class);
            if (!(initCallback instanceof InitCallbackWrapper)) {
                initCallback = new InitCallbackWrapper(executors.getUIExecutor(), initCallback);
            }
            if (str == null || str.isEmpty()) {
                initCallback.onError(new VungleException(6));
            } else if (!(context2 instanceof Application)) {
                initCallback.onError(new VungleException(7));
            } else if (isInitialized()) {
                initCallback.onSuccess();
                VungleLogger.debug("Vungle#init", "init already complete");
            } else if (isInitializing.getAndSet(true)) {
                onInitError(initCallback, new VungleException(8));
            } else if (b.k(context2, "android.permission.ACCESS_NETWORK_STATE") == 0 && b.k(context2, "android.permission.INTERNET") == 0) {
                runtimeValues.initCallback.set(initCallback);
                executors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.Vungle.AnonymousClass1 */

                    public void run() {
                        Vungle vungle = Vungle._instance;
                        vungle.appID = str;
                        InitCallback initCallback = runtimeValues.initCallback.get();
                        if (!Vungle.isDepInit.getAndSet(true)) {
                            VungleLogger.setupLoggerWithLogLevel((LogManager) instance.getService(LogManager.class), VungleLogger.LoggerLevel.DEBUG, 100);
                            CacheManager cacheManager = (CacheManager) instance.getService(CacheManager.class);
                            VungleSettings vungleSettings = runtimeValues.settings.get();
                            if (vungleSettings == null || cacheManager.getBytesAvailable() >= vungleSettings.getMinimumSpaceForInit()) {
                                cacheManager.addListener(Vungle.cacheListener);
                                vungle.context = context2;
                                Repository repository = (Repository) instance.getService(Repository.class);
                                try {
                                    repository.init();
                                    VungleApiClient vungleApiClient = (VungleApiClient) instance.getService(VungleApiClient.class);
                                    vungleApiClient.init();
                                    if (vungleApiClient.platformIsNotSupported()) {
                                        Vungle.onInitError(initCallback, new VungleException(35));
                                        Vungle.deInit();
                                        return;
                                    }
                                    if (vungleSettings != null) {
                                        vungleApiClient.setDefaultIdFallbackDisabled(vungleSettings.getAndroidIdOptOut());
                                    }
                                    ((AdLoader) instance.getService(AdLoader.class)).init((JobRunner) instance.getService(JobRunner.class));
                                    if (vungle.consent.get() != null) {
                                        Vungle.saveGDPRConsent(repository, (Consent) vungle.consent.get(), vungle.consentVersion);
                                    } else {
                                        Cookie cookie = (Cookie) repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get();
                                        if (cookie == null) {
                                            vungle.consent.set(null);
                                            vungle.consentVersion = null;
                                        } else {
                                            vungle.consent.set(Vungle.getConsent(cookie));
                                            vungle.consentVersion = Vungle.getConsentMessageVersion(cookie);
                                        }
                                    }
                                    if (vungle.ccpaStatus.get() != null) {
                                        Vungle.updateCCPAStatus(repository, (Consent) vungle.ccpaStatus.get());
                                    } else {
                                        vungle.ccpaStatus.set(Vungle.getCCPAStatus((Cookie) repository.load(Cookie.CCPA_COOKIE, Cookie.class).get()));
                                    }
                                } catch (DatabaseHelper.DBException unused) {
                                    Vungle.onInitError(initCallback, new VungleException(26));
                                    Vungle.deInit();
                                    return;
                                }
                            } else {
                                Vungle.onInitError(initCallback, new VungleException(16));
                                Vungle.deInit();
                                return;
                            }
                        }
                        Repository repository2 = (Repository) instance.getService(Repository.class);
                        Cookie cookie2 = (Cookie) repository2.load("appId", Cookie.class).get();
                        if (cookie2 == null) {
                            cookie2 = new Cookie("appId");
                        }
                        cookie2.putValue("appId", str);
                        try {
                            repository2.save(cookie2);
                            vungle.configure(initCallback, false);
                        } catch (DatabaseHelper.DBException unused2) {
                            if (initCallback != null) {
                                Vungle.onInitError(initCallback, new VungleException(26));
                            }
                            Vungle.isInitializing.set(false);
                        }
                    }
                });
            } else {
                Log.e(TAG, "Network permissions not granted");
                onInitError(initCallback, new VungleException(34));
                isInitializing.set(false);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void updateCCPAStatus(final Repository repository, final Consent consent2) {
        repository.load(Cookie.CCPA_COOKIE, Cookie.class, new Repository.LoadCallback<Cookie>() {
            /* class com.vungle.warren.Vungle.AnonymousClass14 */

            public void onLoaded(Cookie cookie) {
                if (cookie == null) {
                    cookie = new Cookie(Cookie.CCPA_COOKIE);
                }
                cookie.putValue(Cookie.CCPA_CONSENT_STATUS, consent2 == Consent.OPTED_OUT ? Cookie.CONSENT_STATUS_OPTED_OUT : Cookie.CONSENT_STATUS_OPTED_IN);
                repository.save(cookie, null, false);
            }
        });
    }

    static boolean canPlayAd(Advertisement advertisement) {
        Context context2 = _instance.context;
        if (context2 == null) {
            return false;
        }
        return ((AdLoader) ServiceLocator.getInstance(context2).getService(AdLoader.class)).canPlayAd(advertisement);
    }
}
