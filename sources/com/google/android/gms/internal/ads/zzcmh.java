package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public final class zzcmh {
    public static PackageInfo zza(Context context, ApplicationInfo applicationInfo) {
        try {
            return yv.a(context).e(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
