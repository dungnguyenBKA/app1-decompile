package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import javax.annotation.concurrent.GuardedBy;

public final class zzdmu {
    private final Object lock = new Object();
    private final d zzbqg;
    private volatile long zzecz = 0;
    @GuardedBy("lock")
    private volatile int zzhiw = zzdmx.zzhkb;

    public zzdmu(d dVar) {
        this.zzbqg = dVar;
    }

    private final void zzauw() {
        long a = this.zzbqg.a();
        synchronized (this.lock) {
            if (this.zzhiw == zzdmx.zzhkd) {
                if (this.zzecz + ((Long) zzwr.zzqr().zzd(zzabp.zzcxl)).longValue() <= a) {
                    this.zzhiw = zzdmx.zzhkb;
                }
            }
        }
    }

    private final void zzr(int i, int i2) {
        zzauw();
        long a = this.zzbqg.a();
        synchronized (this.lock) {
            if (this.zzhiw == i) {
                this.zzhiw = i2;
                if (this.zzhiw == zzdmx.zzhkd) {
                    this.zzecz = a;
                }
            }
        }
    }

    public final boolean zzaux() {
        boolean z;
        synchronized (this.lock) {
            zzauw();
            z = this.zzhiw == zzdmx.zzhkc;
        }
        return z;
    }

    public final boolean zzauy() {
        boolean z;
        synchronized (this.lock) {
            zzauw();
            z = this.zzhiw == zzdmx.zzhkd;
        }
        return z;
    }

    public final void zzbl(boolean z) {
        if (z) {
            zzr(zzdmx.zzhkb, zzdmx.zzhkc);
        } else {
            zzr(zzdmx.zzhkc, zzdmx.zzhkb);
        }
    }

    public final void zzxo() {
        zzr(zzdmx.zzhkc, zzdmx.zzhkd);
    }
}
