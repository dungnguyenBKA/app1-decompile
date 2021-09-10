package defpackage;

import android.util.Log;

/* renamed from: st  reason: default package */
public final class st {
    public static void a(String str, String str2, Object obj) {
        d(str);
        String.format(str2, obj);
    }

    public static void b(String str, String str2, Object... objArr) {
        d(str);
        String.format(str2, objArr);
    }

    public static void c(String str, String str2, Throwable th) {
        Log.e(d(str), str2, th);
    }

    private static String d(String str) {
        return ic.i("TransportRuntime.", str);
    }

    public static void e(String str, String str2) {
        Log.i(d(str), str2);
    }

    public static void f(String str, String str2, Object obj) {
        Log.w(d(str), String.format(str2, obj));
    }
}
