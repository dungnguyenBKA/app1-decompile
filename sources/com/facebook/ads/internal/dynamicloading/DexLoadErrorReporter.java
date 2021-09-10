package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class DexLoadErrorReporter {
    public static final double SAMPLING = 0.1d;
    private static final AtomicBoolean a = new AtomicBoolean();

    /* access modifiers changed from: package-private */
    public class a extends Thread {
        final /* synthetic */ Context b;
        final /* synthetic */ String c;

        a(Context context, String str) {
            this.b = context;
            this.c = str;
        }

        /* JADX WARNING: Removed duplicated region for block: B:39:0x016a A[SYNTHETIC, Splitter:B:39:0x016a] */
        /* JADX WARNING: Removed duplicated region for block: B:44:0x0175 A[SYNTHETIC, Splitter:B:44:0x0175] */
        /* JADX WARNING: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            // Method dump skipped, instructions count: 420
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter.a.run():void");
        }
    }

    static void a(Context context, JSONObject jSONObject, String str) {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", "android");
        jSONObject.put("SESSION_ID", str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", "Android");
    }

    @SuppressLint({"CatchGeneralException"})
    public static void reportDexLoadingIssue(Context context, String str, double d) {
        AtomicBoolean atomicBoolean = a;
        if (!atomicBoolean.get() && Math.random() < d) {
            atomicBoolean.set(true);
            new a(context, str).start();
        }
    }
}
