package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzayt {
    private final Object lock;
    private volatile int zzecy;
    private volatile long zzecz;

    private zzayt() {
        this.lock = new Object();
        this.zzecy = zzays.zzecu;
        this.zzecz = 0;
    }

    public final void zzxo() {
        int i;
        long a = zzr.zzky().a();
        synchronized (this.lock) {
            int i2 = this.zzecy;
            i = zzays.zzecw;
            if (i2 == i) {
                if (this.zzecz + ((Long) zzwr.zzqr().zzd(zzabp.zzcxl)).longValue() <= a) {
                    this.zzecy = zzays.zzecu;
                }
            }
        }
        long a2 = zzr.zzky().a();
        synchronized (this.lock) {
            if (this.zzecy == 2) {
                this.zzecy = 3;
                if (this.zzecy == i) {
                    this.zzecz = a2;
                }
            }
        }
    }

    /* synthetic */ zzayt(zzayq zzayq) {
        this();
    }
}
