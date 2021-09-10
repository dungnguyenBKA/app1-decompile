package defpackage;

import android.util.Log;

/* renamed from: az  reason: default package */
public class az {
    static final az a = new az("FirebaseCrashlytics");

    public az(String str) {
    }

    private boolean a(int i) {
        return 4 <= i || Log.isLoggable("FirebaseCrashlytics", i);
    }

    public static az f() {
        return a;
    }

    public void b(String str) {
        a(3);
    }

    public void c(String str, Throwable th) {
        a(3);
    }

    public void d(String str) {
        if (a(6)) {
            Log.e("FirebaseCrashlytics", str, null);
        }
    }

    public void e(String str, Throwable th) {
        if (a(6)) {
            Log.e("FirebaseCrashlytics", str, th);
        }
    }

    public void g(String str) {
        if (a(4)) {
            Log.i("FirebaseCrashlytics", str, null);
        }
    }

    public void h(String str) {
        a(2);
    }

    public void i(String str) {
        if (a(5)) {
            Log.w("FirebaseCrashlytics", str, null);
        }
    }

    public void j(String str, Throwable th) {
        if (a(5)) {
            Log.w("FirebaseCrashlytics", str, th);
        }
    }
}
