package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;

public final class zzqj {
    private final Handler handler;
    private final zzqk zzbmz;

    public zzqj(Handler handler2, zzqk zzqk) {
        this.handler = zzqk != null ? (Handler) zzpg.checkNotNull(handler2) : null;
        this.zzbmz = zzqk;
    }

    public final void zza(zzjm zzjm) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqm(this, zzjm));
        }
    }

    public final void zzb(zzht zzht) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqo(this, zzht));
        }
    }

    public final void zzf(int i, long j) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqn(this, i, j));
        }
    }

    public final void zza(String str, long j, long j2) {
        if (this.zzbmz != null) {
            this.handler.post(new zzql(this, str, j, j2));
        }
    }

    public final void zzb(zzjm zzjm) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqr(this, zzjm));
        }
    }

    public final void zza(int i, int i2, int i3, float f) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqq(this, i, i2, i3, f));
        }
    }

    public final void zza(Surface surface) {
        if (this.zzbmz != null) {
            this.handler.post(new zzqp(this, surface));
        }
    }
}
