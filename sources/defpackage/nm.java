package defpackage;

import android.os.Handler;
import android.os.Looper;

/* renamed from: nm  reason: default package */
public class nm {
    private static Handler a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable, long j) {
        a.postDelayed(runnable, j);
    }
}
