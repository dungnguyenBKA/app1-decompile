package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

public final class zzbno implements zzbtb, zzqw {
    private final zzdmw zzfrj;
    private final zzbsd zzfvw;
    private final zzbtf zzfvx;
    private final AtomicBoolean zzfvy = new AtomicBoolean();
    private final AtomicBoolean zzfvz = new AtomicBoolean();

    public zzbno(zzdmw zzdmw, zzbsd zzbsd, zzbtf zzbtf) {
        this.zzfrj = zzdmw;
        this.zzfvw = zzbsd;
        this.zzfvx = zzbtf;
    }

    private final void zzako() {
        if (this.zzfvy.compareAndSet(false, true)) {
            this.zzfvw.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final synchronized void onAdLoaded() {
        if (this.zzfrj.zzhiz != 1) {
            zzako();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        if (this.zzfrj.zzhiz == 1 && zzqx.zzbrj) {
            zzako();
        }
        if (zzqx.zzbrj && this.zzfvz.compareAndSet(false, true)) {
            this.zzfvx.zzalq();
        }
    }
}
