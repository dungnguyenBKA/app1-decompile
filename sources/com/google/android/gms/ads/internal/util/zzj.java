package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import androidx.browser.customtabs.c;
import androidx.core.app.k;
import androidx.core.content.a;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.c;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.i;
import com.google.android.gms.internal.ads.zzaaw;
import com.google.android.gms.internal.ads.zzaba;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzacp;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzdvl;
import com.google.android.gms.internal.ads.zzdzk;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzeqn;
import com.google.android.gms.internal.ads.zzwr;
import com.vungle.warren.error.VungleException;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.concurrent.GuardedBy;
import org.apache.http.HttpHeaders;
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzj {
    public static final zzdvl zzeen = new zzg(Looper.getMainLooper());
    private AtomicReference<Pattern> a = new AtomicReference<>(null);
    private AtomicReference<Pattern> b = new AtomicReference<>(null);
    private boolean c = true;
    private final Object d = new Object();
    @GuardedBy("userAgentLock")
    private String e;
    private boolean f = false;
    private boolean g = false;
    private final Executor h = Executors.newSingleThreadExecutor();

    private static Bundle a(Context context) {
        try {
            return yv.a(context).c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e2) {
            zzd.zza("Error getting metadata", e2);
            return null;
        }
    }

    private final JSONArray d(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            e(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final void e(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(zzc((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(zzj((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(d((Collection) obj));
        } else if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                e(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        } else {
            jSONArray.put(obj);
        }
    }

    private final void f(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzc((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, zzj((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, d((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, d(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private static boolean h(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    protected static String i(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return k();
        }
    }

    private static String j(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        if (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) {
            return string;
        }
        return "";
    }

    private static String k() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static AlertDialog.Builder zzan(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zzaaw zzao(Context context) {
        return new zzaaw(context);
    }

    @SuppressLint({"NewApi"})
    public static String zzap(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (!(activityManager == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.isEmpty() || (runningTaskInfo = runningTasks.get(0)) == null || (componentName = runningTaskInfo.topActivity) == null)) {
                return componentName.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean zzaq(Context context) {
        boolean z;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager != null) {
                if (keyguardManager != null) {
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                    if (runningAppProcesses == null) {
                        return false;
                    }
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (Process.myPid() == runningAppProcessInfo.pid) {
                            if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                                return true;
                            }
                            PowerManager powerManager = (PowerManager) context.getSystemService("power");
                            if (powerManager == null) {
                                z = false;
                            } else {
                                z = powerManager.isScreenOn();
                            }
                            if (z) {
                                return false;
                            }
                            return true;
                        }
                    }
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int zzar(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public static boolean zzat(Context context) {
        if (context == null) {
            return false;
        }
        Object systemService = context.getSystemService("keyguard");
        KeyguardManager keyguardManager = (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    public static boolean zzau(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzazk.zzc("Error loading class.", th);
            zzr.zzkv().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzav(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxr)).booleanValue()) {
            return "";
        }
        return context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle zzaw(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxs)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static boolean zzax(Context context) {
        Window window;
        if (!(!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || window.getDecorView() == null)) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) {
                return false;
            }
            return true;
        }
        return false;
    }

    public static String zzay(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return j(a(context));
    }

    public static boolean zzaz(Context context) {
        Bundle a2 = a(context);
        return TextUtils.isEmpty(j(a2)) && !TextUtils.isEmpty(a2.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            new zzbq(context, str, (String) obj).zzye();
        }
    }

    public static boolean zzba(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @TargetApi(VungleException.DB_ERROR)
    public static void zzbb(Context context) {
        if (c.c()) {
            NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
            notificationChannel.setShowBadge(false);
            ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
    }

    public static boolean zzbc(Context context) {
        return k.b(context).a();
    }

    public static zzbg zzbd(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzazk.zzev("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            if (queryLocalInterface instanceof zzbg) {
                return (zzbg) queryLocalInterface;
            }
            return new zzbi(iBinder);
        } catch (Exception e2) {
            zzr.zzkv().zza(e2, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", zzr.zzkr().zzq(context, str));
            hashMap.put(HttpHeaders.CACHE_CONTROL, "max-stale=3600");
            String str3 = new zzay(context).zzb(str2, hashMap).get(60, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", HTTP.UTF_8, new ByteArrayInputStream(str3.getBytes(HTTP.UTF_8)));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e2) {
            zzazk.zzd("Could not fetch MRAID JS.", e2);
            return null;
        }
    }

    public static int zzdf(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        StringBuilder sb = new StringBuilder(97);
        sb.append("HTTP timeout too low: ");
        sb.append(i);
        sb.append(" milliseconds. Reverting to default timeout: 60000 milliseconds.");
        zzazk.zzex(sb.toString());
        return 60000;
    }

    public static int zzeg(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(valueOf.length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzazk.zzex(sb.toString());
            return 0;
        }
    }

    public static boolean zzeh(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzek(String str) {
        if (!zzaze.isEnabled()) {
            return false;
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvi)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcvk);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzwr.zzqr().zzd(zzabp.zzcvj);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static int[] zzf(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? new int[]{0, 0} : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static Map<String, String> zzg(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    public static Bitmap zzm(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0027 A[SYNTHETIC, Splitter:B:15:0x0027] */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap zzn(android.view.View r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r6.isDrawingCacheEnabled()     // Catch:{ RuntimeException -> 0x001e }
            r2 = 1
            r6.setDrawingCacheEnabled(r2)     // Catch:{ RuntimeException -> 0x001e }
            android.graphics.Bitmap r2 = r6.getDrawingCache()     // Catch:{ RuntimeException -> 0x001e }
            if (r2 == 0) goto L_0x0017
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r2)     // Catch:{ RuntimeException -> 0x001e }
            goto L_0x0018
        L_0x0017:
            r2 = r0
        L_0x0018:
            r6.setDrawingCacheEnabled(r1)     // Catch:{ RuntimeException -> 0x001c }
            goto L_0x0025
        L_0x001c:
            r1 = move-exception
            goto L_0x0020
        L_0x001e:
            r1 = move-exception
            r2 = r0
        L_0x0020:
            java.lang.String r3 = "Fail to capture the web view"
            com.google.android.gms.internal.ads.zzazk.zzc(r3, r1)
        L_0x0025:
            if (r2 != 0) goto L_0x005d
            int r1 = r6.getWidth()     // Catch:{ RuntimeException -> 0x0056 }
            int r2 = r6.getHeight()     // Catch:{ RuntimeException -> 0x0056 }
            if (r1 == 0) goto L_0x0050
            if (r2 != 0) goto L_0x0034
            goto L_0x0050
        L_0x0034:
            int r3 = r6.getWidth()     // Catch:{ RuntimeException -> 0x0056 }
            int r4 = r6.getHeight()     // Catch:{ RuntimeException -> 0x0056 }
            android.graphics.Bitmap$Config r5 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ RuntimeException -> 0x0056 }
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3, r4, r5)     // Catch:{ RuntimeException -> 0x0056 }
            android.graphics.Canvas r4 = new android.graphics.Canvas     // Catch:{ RuntimeException -> 0x0056 }
            r4.<init>(r3)     // Catch:{ RuntimeException -> 0x0056 }
            r5 = 0
            r6.layout(r5, r5, r1, r2)     // Catch:{ RuntimeException -> 0x0056 }
            r6.draw(r4)     // Catch:{ RuntimeException -> 0x0056 }
            r0 = r3
            goto L_0x005c
        L_0x0050:
            java.lang.String r6 = "Width or height of view is zero"
            com.google.android.gms.internal.ads.zzazk.zzex(r6)     // Catch:{ RuntimeException -> 0x0056 }
            goto L_0x005c
        L_0x0056:
            r6 = move-exception
            java.lang.String r1 = "Fail to capture the webview"
            com.google.android.gms.internal.ads.zzazk.zzc(r1, r6)
        L_0x005c:
            r2 = r0
        L_0x005d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzn(android.view.View):android.graphics.Bitmap");
    }

    public static boolean zzp(Context context, String str) {
        Context zzx = zzaul.zzx(context);
        return yv.a(zzx).b(str, zzx.getPackageName()) == 0;
    }

    public static int zzr(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static boolean zzs(View view) {
        if (view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof ScrollView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return false;
        }
        return true;
    }

    public static String zzyy() {
        return UUID.randomUUID().toString();
    }

    public static String zzyz() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return ic.e(str2.length() + ic.m(str, 1), str, " ", str2);
    }

    public static String zzzb() {
        Resources resources = zzr.zzkv().getResources();
        return resources != null ? resources.getString(R.string.s7) : "Test Ad";
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zzdf = zzdf(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(zzdf);
        sb.append(" milliseconds.");
        zzazk.zzew(sb.toString());
        httpURLConnection.setConnectTimeout(zzdf);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zzdf);
        httpURLConnection.setRequestProperty("User-Agent", zzq(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zzak(Context context) {
        if (this.f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new b0(this, null), intentFilter);
        this.f = true;
        return true;
    }

    public final boolean zzal(Context context) {
        if (this.g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new z(this), intentFilter);
        this.g = true;
        return true;
    }

    public final JSONObject zzc(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            f(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final boolean zzei(String str) {
        return h(str, this.a, (String) zzwr.zzqr().zzd(zzabp.zzcoe));
    }

    public final boolean zzej(String str) {
        return h(str, this.b, (String) zzwr.zzqr().zzd(zzabp.zzcof));
    }

    public final zzdzw<Map<String, String>> zzh(Uri uri) {
        return zzdzk.zza(new w(uri), this.h);
    }

    public final JSONObject zzj(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                f(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final String zzq(Context context, String str) {
        String str2;
        synchronized (this.d) {
            String str3 = this.e;
            if (str3 != null) {
                return str3;
            }
            if (str == null) {
                return k();
            }
            try {
                this.e = zzr.zzkt().getDefaultUserAgent(context);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.e)) {
                zzwr.zzqn();
                if (!zzaza.zzzx()) {
                    this.e = null;
                    zzeen.post(new x(this, context));
                    while (this.e == null) {
                        try {
                            this.d.wait();
                        } catch (InterruptedException unused2) {
                            String k = k();
                            this.e = k;
                            String valueOf = String.valueOf(k);
                            zzazk.zzex(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    try {
                        str2 = new WebView(context).getSettings().getUserAgentString();
                    } catch (Throwable unused3) {
                        str2 = k();
                    }
                    this.e = str2;
                }
            }
            String valueOf2 = String.valueOf(this.e);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 10 + str.length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.e = sb.toString();
            try {
                if (yv.a(context).f()) {
                    this.e = String.valueOf(this.e).concat(";aia");
                }
            } catch (Exception e2) {
                zzr.zzkv().zza(e2, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.e).concat(")");
            this.e = concat;
            return concat;
        }
    }

    public static int[] zzh(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (findViewById = window.findViewById(16908290)) == null) ? new int[]{0, 0} : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzwr.zzqn().zzd(activity, iArr[0]), zzwr.zzqn().zzd(activity, iArr[1])};
    }

    public static AlertDialog.Builder zzc(Context context, int i) {
        return new AlertDialog.Builder(context, i);
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public static void zzb(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzazk.zzdy(sb.toString());
        } catch (ActivityNotFoundException e2) {
            zzazk.zzc("No browser is found.", e2);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzazp.zzeic.execute(runnable);
        }
    }

    public static String zzr(Context context, String str) {
        try {
            return new String(i.b(context.openFileInput(str), true), HTTP.UTF_8);
        } catch (IOException unused) {
            zzazk.zzdy("Error reading from internal storage.");
            return "";
        }
    }

    public static int[] zzg(Activity activity) {
        int[] zzf = zzf(activity);
        return new int[]{zzwr.zzqn().zzd(activity, zzf[0]), zzwr.zzqn().zzd(activity, zzf[1])};
    }

    public static void zzc(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(HTTP.UTF_8));
            openFileOutput.close();
        } catch (Exception e2) {
            zzazk.zzc("Error writing to file in internal storage.", e2);
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public final zzacr zza(Context context, Uri uri) {
        zzacr zzacr;
        if (context == null) {
            zzd.zzeb("Trying to open chrome custom tab on a null context");
            zzacr = zzacr.CONTEXT_NULL;
        } else if (!(context instanceof Activity)) {
            zzd.zzeb("Chrome Custom Tabs can only work with Activity context.");
            zzacr = zzacr.CONTEXT_NOT_AN_ACTIVITY;
        } else if (zzeqn.zzcl(context) == null) {
            zzd.zzeb("Default browser does not support custom tabs.");
            zzacr = zzacr.CCT_NOT_SUPPORTED;
        } else {
            zzacr = null;
        }
        zzaba<Boolean> zzaba = zzabp.zzcus;
        zzaba<Boolean> zzaba2 = zzabp.zzcut;
        if (((Boolean) zzwr.zzqr().zzd(zzaba)).equals(zzwr.zzqr().zzd(zzaba2))) {
            zzacr = zzacr.WRONG_EXP_SETUP;
        }
        if (zzacr != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return zzacr;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
            zzacp zzacp = new zzacp();
            zzacp.zza(new y(zzacp, context, uri));
            zzacp.zzd((Activity) context);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzaba2)).booleanValue()) {
            androidx.browser.customtabs.c a2 = new c.a(null).a();
            a2.a.setData(uri);
            Intent intent2 = a2.a;
            int i = a.b;
            context.startActivity(intent2, null);
        }
        return zzacr.CCT_READY_TO_OPEN;
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) {
        String str;
        zzr.zzkr();
        String contentType = httpURLConnection.getContentType();
        String str2 = "";
        if (TextUtils.isEmpty(contentType)) {
            str = str2;
        } else {
            str = contentType.split(";")[0].trim();
        }
        zzr.zzkr();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
            if (split.length != 1) {
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    if (split[i].trim().startsWith("charset")) {
                        String[] split2 = split[i].trim().split("=");
                        if (split2.length > 1) {
                            str2 = split2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null || entry.getValue().size() <= 0)) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return zzr.zzkt().zza(str, str2, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public static void zzb(Context context, Intent intent) {
        if (intent != null) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x0016 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean zzq(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L_0x0012
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L_0x0012
            android.app.Activity r2 = (android.app.Activity) r2
            goto L_0x0013
        L_0x0012:
            r2 = r0
        L_0x0013:
            r1 = 0
            if (r2 != 0) goto L_0x0017
            return r1
        L_0x0017:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L_0x001e
            goto L_0x0022
        L_0x001e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L_0x0022:
            if (r0 == 0) goto L_0x002d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L_0x002d
            r2 = 1
            return r2
        L_0x002d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzq(android.view.View):boolean");
    }

    public static String zza(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    public static boolean zza(ClassLoader classLoader, Class<?> cls, List<String> list) {
        for (String str : list) {
            try {
                if (Class.forName(str, false, classLoader).isAssignableFrom(cls)) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzc(bundle);
            } catch (JSONException e2) {
                zzazk.zzc("Error converting Bundle to JSON", e2);
            }
        }
        return null;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzr.zzkr();
        bundle.putString("device", zzyz());
        bundle.putString("eids", TextUtils.join(",", zzabp.zzsc()));
        zzwr.zzqn();
        zzaza.zza(context, str, str2, bundle, true, new a0(context, str));
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zza(view, powerManager, keyguardManager);
    }

    public static boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        boolean z2;
        if (!zzr.zzkr().c) {
            if (keyguardManager == null) {
                z2 = false;
            } else {
                z2 = keyguardManager.inKeyguardRestrictedInputMode();
            }
            if (z2 && !zzq(view)) {
                z = false;
                if (view.getVisibility() == 0 && view.isShown()) {
                    if ((powerManager != null || powerManager.isScreenOn()) && z) {
                        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqq)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        z = true;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqq)).booleanValue()) {
        }
        return true;
    }

    public static void zza(Context context, Throwable th) {
        if (context != null) {
            boolean z = false;
            try {
                z = zzadr.zzder.get().booleanValue();
            } catch (IllegalStateException unused) {
            }
            if (z) {
                e.a(context, th);
            }
        }
    }

    public static void zza(DownloadManager.Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
    }
}
