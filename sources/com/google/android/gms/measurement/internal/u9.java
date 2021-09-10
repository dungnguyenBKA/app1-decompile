package com.google.android.gms.measurement.internal;

import android.os.Looper;

public final class u9 {
    u9() {
    }

    public static final boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
