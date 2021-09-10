package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import javax.annotation.concurrent.GuardedBy;

public final class o0 {
    private static Object a = new Object();
    @GuardedBy("sLock")
    private static boolean b;
    private static int c;

    public static int a(Context context) {
        synchronized (a) {
            if (!b) {
                b = true;
                try {
                    Bundle bundle = yv.a(context).c(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        bundle.getString("com.google.app.id");
                        c = bundle.getInt("com.google.android.gms.version");
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
            }
        }
        return c;
    }
}
