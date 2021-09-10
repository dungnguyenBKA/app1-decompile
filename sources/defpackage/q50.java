package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.a;

/* renamed from: q50  reason: default package */
public class q50 {
    private final Context a;
    private final SharedPreferences b;
    private final t40 c;
    private boolean d;

    public q50(Context context, String str, t40 t40) {
        boolean z;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            int i2 = a.b;
            context = i >= 24 ? context.createDeviceProtectedStorageContext() : null;
        }
        this.a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.b = sharedPreferences;
        this.c = t40;
        boolean z2 = true;
        if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
            z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
        } else {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (!(packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled"))) {
                    z2 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            z = z2;
        }
        this.d = z;
    }

    public synchronized boolean a() {
        return this.d;
    }
}
