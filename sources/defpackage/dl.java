package defpackage;

import android.os.SystemClock;

/* renamed from: dl  reason: default package */
public final class dl {
    private static final double a = (1.0d / Math.pow(10.0d, 6.0d));
    public static final /* synthetic */ int b = 0;

    public static double a(long j) {
        double elapsedRealtimeNanos = (double) (SystemClock.elapsedRealtimeNanos() - j);
        double d = a;
        Double.isNaN(elapsedRealtimeNanos);
        return elapsedRealtimeNanos * d;
    }
}
