package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;

public final class zzaul extends ContextWrapper {
    public static Context zzx(Context context) {
        if (context instanceof zzaul) {
            return ((zzaul) context).getBaseContext();
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final Context getApplicationContext() {
        throw new NoSuchMethodError();
    }

    public final synchronized ApplicationInfo getApplicationInfo() {
        throw new NoSuchMethodError();
    }

    public final synchronized String getPackageName() {
        throw new NoSuchMethodError();
    }

    public final synchronized String getPackageResourcePath() {
        throw new NoSuchMethodError();
    }

    public final synchronized void startActivity(Intent intent) {
        throw new NoSuchMethodError();
    }
}
