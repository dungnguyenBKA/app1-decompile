package com.google.android.gms.internal.ads;

import android.os.Handler;

public final class zzik {
    private final Handler handler;
    private final zzil zzajd;

    public zzik(Handler handler2, zzil zzil) {
        this.handler = zzil != null ? (Handler) zzpg.checkNotNull(handler2) : null;
        this.zzajd = zzil;
    }

    public final void zza(zzjm zzjm) {
        if (this.zzajd != null) {
            this.handler.post(new zzin(this, zzjm));
        }
    }

    public final void zzb(zzht zzht) {
        if (this.zzajd != null) {
            this.handler.post(new zzip(this, zzht));
        }
    }

    public final void zzw(int i) {
        if (this.zzajd != null) {
            this.handler.post(new zziq(this, i));
        }
    }

    public final void zza(String str, long j, long j2) {
        if (this.zzajd != null) {
            this.handler.post(new zzim(this, str, j, j2));
        }
    }

    public final void zzb(zzjm zzjm) {
        if (this.zzajd != null) {
            this.handler.post(new zzir(this, zzjm));
        }
    }

    public final void zza(int i, long j, long j2) {
        if (this.zzajd != null) {
            this.handler.post(new zzio(this, i, j, j2));
        }
    }
}
