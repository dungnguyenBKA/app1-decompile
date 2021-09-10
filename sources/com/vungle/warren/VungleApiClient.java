package com.vungle.warren;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import androidx.annotation.Keep;
import com.google.ads.ADRequestList;
import com.google.android.gms.common.d;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.JsonUtil;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.network.APIFactory;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Response;
import com.vungle.warren.network.VungleApi;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.TimeoutProvider;
import defpackage.eh0;
import defpackage.gh0;
import defpackage.jh0;
import defpackage.lh0;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;

public class VungleApiClient {
    private static String BASE_URL = "https://ads.api.vungle.com/";
    private static final String ID = "id";
    static final String MANUFACTURER_AMAZON = "Amazon";
    private static final String TAG = "com.vungle.warren.VungleApiClient";
    protected static WrapperFramework WRAPPER_FRAMEWORK_SELECTED;
    private static String headerUa = ic.l(new StringBuilder(), MANUFACTURER_AMAZON.equals(Build.MANUFACTURER) ? "VungleAmazon/" : "VungleDroid/", "6.9.1");
    private static Set<eh0> logInterceptors = new HashSet();
    private static Set<eh0> networkInterceptors = new HashSet();
    private VungleApi api;
    private s60 appBody;
    private CacheManager cacheManager;
    private gh0 client;
    private Context context;
    private boolean defaultIdFallbackDisabled;
    private s60 deviceBody;
    private boolean enableOm;
    private VungleApi gzipApi;
    private Boolean isGooglePlayServicesAvailable;
    private String logEndpoint;
    private String newEndpoint;
    private final boolean okHttpSupported;
    private final OMInjector omInjector;
    private String reportAdEndpoint;
    private Repository repository;
    private String requestAdEndpoint;
    private Map<String, Long> retryAfterDataMap = new ConcurrentHashMap();
    private String riEndpoint;
    private VungleApi timeoutApi;
    private TimeoutProvider timeoutProvider;
    private String uaString = System.getProperty("http.agent");
    private s60 userBody;
    private boolean willPlayAdEnabled;
    private String willPlayAdEndpoint;
    private int willPlayAdTimeout;

    public static class ClearTextTrafficException extends IOException {
        ClearTextTrafficException(String str) {
            super(str);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionTypeDetail {
        public static final String CDMA_1XRTT = "cdma_1xrtt";
        public static final String CDMA_EVDO_0 = "cdma_evdo_0";
        public static final String CDMA_EVDO_A = "cdma_evdo_a";
        public static final String CDMA_EVDO_B = "cdma_evdo_b";
        public static final String EDGE = "edge";
        public static final String GPRS = "gprs";
        public static final String HRPD = "hrpd";
        public static final String HSDPA = "hsdpa";
        public static final String HSUPA = "hsupa";
        public static final String LTE = "LTE";
        public static final String UNKNOWN = "unknown";
        public static final String WCDMA = "wcdma";
    }

    static class GzipRequestInterceptor implements eh0 {
        private static final String CONTENT_ENCODING = "Content-Encoding";
        private static final String GZIP = "gzip";

        GzipRequestInterceptor() {
        }

        private kh0 gzip(final kh0 kh0) {
            final xj0 xj0 = new xj0();
            yj0 b = ik0.b(new fk0(xj0));
            kh0.writeTo(b);
            b.close();
            return new kh0() {
                /* class com.vungle.warren.VungleApiClient.GzipRequestInterceptor.AnonymousClass1 */

                @Override // defpackage.kh0
                public long contentLength() {
                    return xj0.size();
                }

                @Override // defpackage.kh0
                public fh0 contentType() {
                    return kh0.contentType();
                }

                @Override // defpackage.kh0
                public void writeTo(yj0 yj0) {
                    yj0.U(xj0.p0());
                }
            };
        }

        @Override // defpackage.eh0
        public lh0 intercept(eh0.a aVar) {
            ji0 ji0 = (ji0) aVar;
            jh0 i = ji0.i();
            if (i.a() == null || i.c("Content-Encoding") != null) {
                return ji0.f(i);
            }
            jh0.a g = i.g();
            g.c("Content-Encoding", GZIP);
            g.e(i.f(), gzip(i.a()));
            return ji0.f(g.b());
        }
    }

    @Keep
    public enum WrapperFramework {
        admob,
        air,
        cocos2dx,
        corona,
        dfp,
        heyzap,
        marmalade,
        mopub,
        unity,
        fyber,
        ironsource,
        upsight,
        appodeal,
        aerserv,
        adtoapp,
        tapdaq,
        vunglehbs,
        max,
        none
    }

    VungleApiClient(Context context2, CacheManager cacheManager2, Repository repository2, OMInjector oMInjector) {
        this.cacheManager = cacheManager2;
        this.context = context2.getApplicationContext();
        this.repository = repository2;
        this.omInjector = oMInjector;
        AnonymousClass1 r3 = new eh0() {
            /* class com.vungle.warren.VungleApiClient.AnonymousClass1 */

            @Override // defpackage.eh0
            public lh0 intercept(eh0.a aVar) {
                int L;
                ji0 ji0 = (ji0) aVar;
                jh0 i = ji0.i();
                String e = i.h().e();
                Long l = (Long) VungleApiClient.this.retryAfterDataMap.get(e);
                if (l != null) {
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(l.longValue() - System.currentTimeMillis());
                    if (seconds > 0) {
                        lh0.a aVar2 = new lh0.a();
                        aVar2.o(i);
                        aVar2.a(HttpHeaders.RETRY_AFTER, String.valueOf(seconds));
                        aVar2.f(HttpStatus.SC_INTERNAL_SERVER_ERROR);
                        aVar2.m(hh0.HTTP_1_1);
                        aVar2.j("Server is busy");
                        aVar2.b(mh0.create(fh0.d("application/json; charset=utf-8"), "{\"Error\":\"Retry-After\"}"));
                        return aVar2.c();
                    }
                    VungleApiClient.this.retryAfterDataMap.remove(e);
                }
                lh0 f = ji0.f(i);
                if (f != null && ((L = f.L()) == 429 || L == 500 || L == 502 || L == 503)) {
                    String c = f.b0().c(HttpHeaders.RETRY_AFTER);
                    if (!TextUtils.isEmpty(c)) {
                        try {
                            long parseLong = Long.parseLong(c);
                            if (parseLong > 0) {
                                VungleApiClient.this.retryAfterDataMap.put(e, Long.valueOf((parseLong * 1000) + System.currentTimeMillis()));
                            }
                        } catch (NumberFormatException unused) {
                            String unused2 = VungleApiClient.TAG;
                        }
                    }
                }
                return f;
            }
        };
        gh0.b bVar = new gh0.b();
        bVar.a(r3);
        try {
            this.client = bVar.b();
            this.okHttpSupported = true;
            bVar.a(new GzipRequestInterceptor());
            gh0 b = bVar.b();
            this.api = new APIFactory(this.client, BASE_URL).createAPI();
            this.gzipApi = new APIFactory(b, BASE_URL).createAPI();
            this.timeoutProvider = (TimeoutProvider) ServiceLocator.getInstance(context2).getService(TimeoutProvider.class);
        } catch (ExceptionInInitializerError | NoClassDefFoundError e) {
            Log.e(TAG, "Can't init OKHttp", e);
            this.okHttpSupported = false;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void addUserAgentInCookie(String str) {
        Cookie cookie = new Cookie(Cookie.USER_AGENT_ID_COOKIE);
        cookie.putValue(Cookie.USER_AGENT_ID_COOKIE, str);
        this.repository.save(cookie);
    }

    private String getConnectionTypeDetail(int i) {
        switch (i) {
            case 1:
                return ConnectionTypeDetail.GPRS;
            case 2:
                return ConnectionTypeDetail.EDGE;
            case 3:
            case 10:
            case 11:
            default:
                return ConnectionTypeDetail.UNKNOWN;
            case 4:
                return ConnectionTypeDetail.WCDMA;
            case 5:
                return ConnectionTypeDetail.CDMA_EVDO_0;
            case 6:
                return ConnectionTypeDetail.CDMA_EVDO_A;
            case 7:
                return ConnectionTypeDetail.CDMA_1XRTT;
            case 8:
                return ConnectionTypeDetail.HSDPA;
            case 9:
                return ConnectionTypeDetail.HSUPA;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                return ConnectionTypeDetail.CDMA_EVDO_B;
            case 13:
                return ConnectionTypeDetail.LTE;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return ConnectionTypeDetail.HRPD;
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:42:? */
    /* JADX DEBUG: Multi-variable search result rejected for r6v57, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x0237  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x0285  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0296  */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x02e9 A[SYNTHETIC, Splitter:B:156:0x02e9] */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0303 A[Catch:{ SettingNotFoundException -> 0x0313 }] */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x0359  */
    /* JADX WARNING: Removed duplicated region for block: B:168:0x035c  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x015b  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0184  */
    @android.annotation.SuppressLint({"HardwareIds"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.s60 getDeviceBody() {
        /*
        // Method dump skipped, instructions count: 868
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.VungleApiClient.getDeviceBody():s60");
    }

    public static String getHeaderUa() {
        return headerUa;
    }

    private String getUserAgentFromCookie() {
        Cookie cookie = (Cookie) this.repository.load(Cookie.USER_AGENT_ID_COOKIE, Cookie.class).get();
        if (cookie == null) {
            return System.getProperty("http.agent");
        }
        String string = cookie.getString(Cookie.USER_AGENT_ID_COOKIE);
        return TextUtils.isEmpty(string) ? System.getProperty("http.agent") : string;
    }

    private s60 getUserBody() {
        long j;
        String str;
        String str2;
        String str3;
        s60 s60 = new s60();
        Cookie cookie = (Cookie) this.repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get(this.timeoutProvider.getTimeout(), TimeUnit.MILLISECONDS);
        String str4 = "";
        if (cookie != null) {
            str2 = cookie.getString("consent_status");
            str = cookie.getString("consent_source");
            j = cookie.getLong(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP).longValue();
            str3 = cookie.getString("consent_message_version");
        } else {
            j = 0;
            str2 = ConnectionTypeDetail.UNKNOWN;
            str = "no_interaction";
            str3 = str4;
        }
        s60 s602 = new s60();
        s602.l("consent_status", str2);
        s602.l("consent_source", str);
        s602.k("consent_timestamp", Long.valueOf(j));
        if (!TextUtils.isEmpty(str3)) {
            str4 = str3;
        }
        s602.l("consent_message_version", str4);
        s60.i("gdpr", s602);
        Cookie cookie2 = (Cookie) this.repository.load(Cookie.CCPA_COOKIE, Cookie.class).get();
        String string = cookie2 != null ? cookie2.getString(Cookie.CCPA_CONSENT_STATUS) : Cookie.CONSENT_STATUS_OPTED_IN;
        s60 s603 = new s60();
        s603.l(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, string);
        s60.i("ccpa", s603);
        return s60;
    }

    private void initUserAgentLazy() {
        new Thread(new Runnable() {
            /* class com.vungle.warren.VungleApiClient.AnonymousClass3 */

            public void run() {
                try {
                    VungleApiClient vungleApiClient = VungleApiClient.this;
                    vungleApiClient.uaString = WebSettings.getDefaultUserAgent(vungleApiClient.context);
                    VungleApiClient.this.deviceBody.l("ua", VungleApiClient.this.uaString);
                    VungleApiClient vungleApiClient2 = VungleApiClient.this;
                    vungleApiClient2.addUserAgentInCookie(vungleApiClient2.uaString);
                } catch (Exception e) {
                    String str = VungleApiClient.TAG;
                    StringBuilder q = ic.q("Cannot Get UserAgent. Setting Default Device UserAgent.");
                    q.append(e.getLocalizedMessage());
                    Log.e(str, q.toString());
                }
            }
        }).start();
    }

    public static void setHeaderUa(String str) {
        headerUa = str;
    }

    /* access modifiers changed from: package-private */
    public void addPlaySvcAvailabilityInCookie(boolean z) {
        Cookie cookie = new Cookie(Cookie.IS_PLAY_SERVICE_AVAILABLE);
        cookie.putValue(Cookie.IS_PLAY_SERVICE_AVAILABLE, Boolean.valueOf(z));
        this.repository.save(cookie);
    }

    /* access modifiers changed from: package-private */
    public boolean canCallWillPlayAd() {
        return this.willPlayAdEnabled && !TextUtils.isEmpty(this.willPlayAdEndpoint);
    }

    public Response config() {
        s60 s60 = new s60();
        s60.i("device", getDeviceBody());
        s60.i("app", this.appBody);
        s60.i("user", getUserBody());
        Response<s60> execute = this.api.config(getHeaderUa(), s60).execute();
        if (!execute.isSuccessful()) {
            return execute;
        }
        s60 body = execute.body();
        String str = TAG;
        String str2 = "Config Response: " + body;
        if (JsonUtil.hasNonNull(body, "sleep")) {
            Log.e(str, "Error Initializing Vungle. Please try again. " + (JsonUtil.hasNonNull(body, "info") ? body.n("info").h() : ""));
            throw new VungleException(3);
        } else if (JsonUtil.hasNonNull(body, "endpoints")) {
            s60 p = body.p("endpoints");
            dh0 n = dh0.n(p.n("new").h());
            dh0 n2 = dh0.n(p.n("ads").h());
            dh0 n3 = dh0.n(p.n("will_play_ad").h());
            dh0 n4 = dh0.n(p.n("report_ad").h());
            dh0 n5 = dh0.n(p.n("ri").h());
            dh0 n6 = dh0.n(p.n("log").h());
            if (n == null || n2 == null || n3 == null || n4 == null || n5 == null || n6 == null) {
                Log.e(str, "Error Initializing Vungle. Please try again. ");
                throw new VungleException(3);
            }
            this.newEndpoint = n.toString();
            this.requestAdEndpoint = n2.toString();
            this.willPlayAdEndpoint = n3.toString();
            this.reportAdEndpoint = n4.toString();
            this.riEndpoint = n5.toString();
            this.logEndpoint = n6.toString();
            s60 p2 = body.p("will_play_ad");
            this.willPlayAdTimeout = p2.n("request_timeout").d();
            this.willPlayAdEnabled = p2.n("enabled").a();
            this.enableOm = JsonUtil.getAsBoolean(body.p("viewability"), "om", false);
            if (this.willPlayAdEnabled) {
                gh0.b j = this.client.j();
                j.g((long) this.willPlayAdTimeout, TimeUnit.MILLISECONDS);
                this.timeoutApi = new APIFactory(j.b(), "https://api.vungle.com/").createAPI();
            }
            if (getOmEnabled()) {
                this.omInjector.init();
            }
            return execute;
        } else {
            Log.e(str, "Error Initializing Vungle. Please try again. ");
            throw new VungleException(3);
        }
    }

    public boolean getOmEnabled() {
        return this.enableOm;
    }

    /* access modifiers changed from: package-private */
    public Boolean getPlayServicesAvailabilityFromAPI() {
        try {
            d c = d.c();
            if (c == null) {
                return null;
            }
            Boolean valueOf = Boolean.valueOf(c.d(this.context) == 0);
            addPlaySvcAvailabilityInCookie(valueOf.booleanValue());
            return valueOf;
        } catch (NoClassDefFoundError unused) {
            Log.w(TAG, "Play services Not available");
            Boolean bool = Boolean.FALSE;
            try {
                addPlaySvcAvailabilityInCookie(false);
                return bool;
            } catch (DatabaseHelper.DBException unused2) {
                Log.w(TAG, "Failure to write GPS availability to DB");
                return bool;
            }
        } catch (Exception unused3) {
            Log.w(TAG, "Unexpected exception from Play services lib.");
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public Boolean getPlayServicesAvailabilityFromCookie() {
        Cookie cookie = (Cookie) this.repository.load(Cookie.IS_PLAY_SERVICE_AVAILABLE, Cookie.class).get(this.timeoutProvider.getTimeout(), TimeUnit.MILLISECONDS);
        if (cookie != null) {
            return cookie.getBoolean(Cookie.IS_PLAY_SERVICE_AVAILABLE);
        }
        return null;
    }

    public long getRetryAfterHeaderValue(Response response) {
        try {
            return Long.parseLong(response.headers().c(HttpHeaders.RETRY_AFTER)) * 1000;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public void init() {
        init(this.context);
    }

    public Boolean isGooglePlayServicesAvailable() {
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromCookie();
        }
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        }
        return this.isGooglePlayServicesAvailable;
    }

    /* access modifiers changed from: package-private */
    public void overrideApi(VungleApi vungleApi) {
        this.api = vungleApi;
    }

    public boolean pingTPAT(String str) {
        boolean z;
        if (TextUtils.isEmpty(str) || dh0.n(str) == null) {
            throw new MalformedURLException(ic.i("Invalid URL : ", str));
        }
        try {
            String host = new URL(str).getHost();
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                z = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(host);
            } else {
                z = i >= 23 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : true;
            }
            if (z || !URLUtil.isHttpUrl(str)) {
                try {
                    this.api.pingTPAT(this.uaString, str).execute();
                    return true;
                } catch (IOException unused) {
                    return false;
                }
            } else {
                throw new ClearTextTrafficException("Clear Text Traffic is blocked");
            }
        } catch (MalformedURLException unused2) {
            throw new MalformedURLException(ic.i("Invalid URL : ", str));
        }
    }

    public boolean platformIsNotSupported() {
        return !this.okHttpSupported;
    }

    public Call<s60> reportAd(s60 s60) {
        if (this.reportAdEndpoint != null) {
            s60 s602 = new s60();
            s602.i("device", getDeviceBody());
            s602.i("app", this.appBody);
            s602.i("request", s60);
            s602.i("user", getUserBody());
            return this.gzipApi.reportAd(getHeaderUa(), this.reportAdEndpoint, s602);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    public Call<s60> reportNew() {
        if (this.newEndpoint != null) {
            HashMap hashMap = new HashMap(2);
            p60 n = this.appBody.n("id");
            p60 n2 = this.deviceBody.n("ifa");
            String str = "";
            hashMap.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, n != null ? n.h() : str);
            if (n2 != null) {
                str = n2.h();
            }
            hashMap.put("ifa", str);
            return this.api.reportNew(getHeaderUa(), this.newEndpoint, hashMap);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    public Call<s60> requestAd(String str, String str2, boolean z, s60 s60) {
        if (this.requestAdEndpoint != null) {
            s60 s602 = new s60();
            s602.i("device", getDeviceBody());
            s602.i("app", this.appBody);
            s60 userBody2 = getUserBody();
            if (s60 != null) {
                userBody2.i("vision", s60);
            }
            s602.i("user", userBody2);
            s60 s603 = new s60();
            m60 m60 = new m60();
            m60.j(str);
            s603.i("placements", m60);
            s603.j("header_bidding", Boolean.valueOf(z));
            if (!TextUtils.isEmpty(str2)) {
                s603.l("ad_size", str2);
            }
            s602.i("request", s603);
            return this.gzipApi.ads(getHeaderUa(), this.requestAdEndpoint, s602);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    public Call<s60> ri(s60 s60) {
        if (this.riEndpoint != null) {
            s60 s602 = new s60();
            s602.i("device", getDeviceBody());
            s602.i("app", this.appBody);
            s602.i("request", s60);
            return this.api.ri(getHeaderUa(), this.riEndpoint, s602);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    public Call<s60> sendLog(s60 s60) {
        if (this.logEndpoint != null) {
            return this.gzipApi.sendLog(getHeaderUa(), this.logEndpoint, s60);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    /* access modifiers changed from: package-private */
    public void setAppId(String str) {
        setAppId(str, this.appBody);
    }

    public void setDefaultIdFallbackDisabled(boolean z) {
        this.defaultIdFallbackDisabled = z;
    }

    /* access modifiers changed from: package-private */
    public Call<s60> willPlayAd(String str, boolean z, String str2) {
        s60 s60 = new s60();
        s60.i("device", getDeviceBody());
        s60.i("app", this.appBody);
        s60.i("user", getUserBody());
        s60 s602 = new s60();
        s60 s603 = new s60();
        s603.l("reference_id", str);
        s603.j("is_auto_cached", Boolean.valueOf(z));
        s602.i("placement", s603);
        s602.l(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN, str2);
        s60.i("request", s602);
        return this.timeoutApi.willPlayAd(getHeaderUa(), this.willPlayAdEndpoint, s60);
    }

    private void setAppId(String str, s60 s60) {
        s60.l("id", str);
    }

    /* access modifiers changed from: package-private */
    public synchronized void init(Context context2) {
        s60 s60 = new s60();
        s60.l("bundle", context2.getPackageName());
        String str = null;
        try {
            str = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (str == null) {
            str = "1.0";
        }
        s60.l("ver", str);
        s60 s602 = new s60();
        String str2 = Build.MANUFACTURER;
        s602.l("make", str2);
        s602.l("model", Build.MODEL);
        s602.l("osv", Build.VERSION.RELEASE);
        s602.l("carrier", ((TelephonyManager) context2.getSystemService("phone")).getNetworkOperatorName());
        s602.l("os", MANUFACTURER_AMAZON.equals(str2) ? ADRequestList.AMAZON : "android");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        s602.k("w", Integer.valueOf(displayMetrics.widthPixels));
        s602.k(ADRequestList.ORDER_H, Integer.valueOf(displayMetrics.heightPixels));
        s60 s603 = new s60();
        s603.i("vungle", new s60());
        s602.i("ext", s603);
        try {
            this.uaString = getUserAgentFromCookie();
            initUserAgentLazy();
        } catch (Exception e) {
            String str3 = TAG;
            Log.e(str3, "Cannot Get UserAgent. Setting Default Device UserAgent." + e.getLocalizedMessage());
        }
        s602.l("ua", this.uaString);
        this.deviceBody = s602;
        this.appBody = s60;
        this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
    }
}
