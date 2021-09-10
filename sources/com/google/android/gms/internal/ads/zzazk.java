package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;

public class zzazk {
    public static boolean isLoggable(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }

    public static void zzb(String str, Throwable th) {
        isLoggable(3);
    }

    public static void zzc(String str, Throwable th) {
        if (isLoggable(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzd(String str, Throwable th) {
        if (isLoggable(5)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzdy(String str) {
        isLoggable(3);
    }

    public static void zze(String str, Throwable th) {
        if (!isLoggable(5)) {
            return;
        }
        if (th != null) {
            zzd(zzey(str), th);
        } else {
            zzex(zzey(str));
        }
    }

    public static void zzev(String str) {
        if (isLoggable(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void zzew(String str) {
        if (isLoggable(4)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void zzex(String str) {
        if (isLoggable(5)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }

    private static String zzey(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        int lineNumber = stackTrace[3].getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append(" @");
        sb.append(lineNumber);
        return sb.toString();
    }

    public static void zzez(String str) {
        zze(str, null);
    }
}
