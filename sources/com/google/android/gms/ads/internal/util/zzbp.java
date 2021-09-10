package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.zzr;
import javax.annotation.concurrent.GuardedBy;

public final class zzbp {
    private long a;
    @GuardedBy("lock")
    private long b = Long.MIN_VALUE;
    private final Object c = new Object();

    public zzbp(long j) {
        this.a = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.c) {
            long b2 = zzr.zzky().b();
            if (this.b + this.a > b2) {
                return false;
            }
            this.b = b2;
            return true;
        }
    }

    public final void zzfb(long j) {
        synchronized (this.c) {
            this.a = j;
        }
    }
}
