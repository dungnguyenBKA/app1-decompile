package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.internal.ads.zzass;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzdws;
import java.util.concurrent.Callable;

public final class zzbr {
    /* JADX INFO: finally extract failed */
    public static <T> T zza(zzdws<T> zzdws) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            T t = zzdws.get();
            StrictMode.setThreadPolicy(threadPolicy);
            return t;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicy);
            throw th;
        }
    }

    /* JADX INFO: finally extract failed */
    @Deprecated
    public static <T> T zza(Context context, Callable<T> callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                T call = callable.call();
                StrictMode.setThreadPolicy(threadPolicy);
                return call;
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(threadPolicy);
                throw th;
            }
        } catch (Throwable th2) {
            zzazk.zzc("Unexpected exception.", th2);
            zzass.zzq(context).zza(th2, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }
}
