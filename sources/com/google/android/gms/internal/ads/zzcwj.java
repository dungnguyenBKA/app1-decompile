package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;

final class zzcwj implements zzbsx {
    private final /* synthetic */ zzcrl zzgvx;
    private boolean zzgwj = false;
    private final /* synthetic */ zzbaa zzgwk;
    private final /* synthetic */ zzcwi zzgwl;

    zzcwj(zzcwi zzcwi, zzcrl zzcrl, zzbaa zzbaa) {
        this.zzgwl = zzcwi;
        this.zzgvx = zzcrl;
        this.zzgwk = zzbaa;
    }

    private final void zzm(zzvg zzvg) {
        zzdom zzdom = zzdom.INTERNAL_ERROR;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwj)).booleanValue()) {
            zzdom = zzdom.NO_FILL;
        }
        this.zzgwk.setException(new zzcrn(zzdom, zzvg));
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void onAdFailedToLoad(int i) {
        if (!this.zzgwj) {
            zzm(new zzvg(i, zzcwi.zza(this.zzgvx.zzcio, i), AdError.UNDEFINED_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final synchronized void onAdLoaded() {
        this.zzgwk.set(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final synchronized void zzc(zzvg zzvg) {
        this.zzgwj = true;
        zzm(zzvg);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final synchronized void zzf(int i, String str) {
        if (!this.zzgwj) {
            this.zzgwj = true;
            if (str == null) {
                str = zzcwi.zza(this.zzgvx.zzcio, i);
            }
            zzm(new zzvg(i, str, AdError.UNDEFINED_DOMAIN, null, null));
        }
    }
}
