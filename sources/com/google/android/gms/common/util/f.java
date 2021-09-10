package com.google.android.gms.common.util;

import android.os.SystemClock;

public class f implements d {
    private static final f a = new f();

    private f() {
    }

    public static d d() {
        return a;
    }

    @Override // com.google.android.gms.common.util.d
    public long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.d
    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.d
    public long c() {
        return System.nanoTime();
    }
}
