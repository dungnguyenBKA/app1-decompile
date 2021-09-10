package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzcws implements zzg {
    private final zzbye zzfuq;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzbjz zzgck;
    private final zzbxz zzgcm;
    private AtomicBoolean zzgwt = new AtomicBoolean(false);

    zzcws(zzbrl zzbrl, zzbsd zzbsd, zzbye zzbye, zzbxz zzbxz, zzbjz zzbjz) {
        this.zzgcj = zzbrl;
        this.zzgci = zzbsd;
        this.zzfuq = zzbye;
        this.zzgcm = zzbxz;
        this.zzgck = zzbjz;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzh(View view) {
        if (this.zzgwt.compareAndSet(false, true)) {
            this.zzgck.onAdImpression();
            this.zzgcm.zzv(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
        if (this.zzgwt.get()) {
            this.zzgcj.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
        if (this.zzgwt.get()) {
            this.zzgci.onAdImpression();
            this.zzfuq.zzamr();
        }
    }
}
