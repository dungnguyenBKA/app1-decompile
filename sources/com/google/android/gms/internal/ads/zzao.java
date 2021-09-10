package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class zzao {
    private static final String CLASS_NAME = zzao.class.getName();
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    private static String TAG = "Volley";

    /* access modifiers changed from: package-private */
    public static class zza {
        public static final boolean zzbv = zzao.DEBUG;
        private boolean mFinished = false;
        private final List<zzaq> zzbw = new ArrayList();

        zza() {
        }

        /* access modifiers changed from: protected */
        public final void finalize() {
            if (!this.mFinished) {
                zzd("Request on the loose");
                zzao.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public final synchronized void zza(String str, long j) {
            if (!this.mFinished) {
                this.zzbw.add(new zzaq(str, j, SystemClock.elapsedRealtime()));
            } else {
                throw new IllegalStateException("Marker added to finished log");
            }
        }

        public final synchronized void zzd(String str) {
            long j;
            this.mFinished = true;
            if (this.zzbw.size() == 0) {
                j = 0;
            } else {
                long j2 = this.zzbw.get(0).time;
                List<zzaq> list = this.zzbw;
                j = list.get(list.size() - 1).time - j2;
            }
            if (j > 0) {
                long j3 = this.zzbw.get(0).time;
                zzao.d("(%-4d ms) %s", Long.valueOf(j), str);
                for (zzaq zzaq : this.zzbw) {
                    long j4 = zzaq.time;
                    zzao.d("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(zzaq.zzbu), zzaq.name);
                    j3 = j4;
                }
            }
        }
    }

    public static void d(String str, Object... objArr) {
        zza(str, objArr);
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr));
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            zza(str, objArr);
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr), th);
    }

    private static String zza(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(CLASS_NAME)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                str2 = ic.e(ic.m(methodName, ic.m(substring2, 1)), substring2, ".", methodName);
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
