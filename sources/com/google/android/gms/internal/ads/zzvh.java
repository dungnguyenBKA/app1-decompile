package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdLoadCallback;

public final class zzvh<AdT> extends zzxb {
    private final AdLoadCallback<AdT> zzchk;
    private final AdT zzchl;

    public zzvh(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.zzchk = adLoadCallback;
        this.zzchl = adt;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void onAdLoaded() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.zzchk;
        if (adLoadCallback != null && (adt = this.zzchl) != null) {
            adLoadCallback.onAdLoaded(adt);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void zzc(zzvg zzvg) {
        AdLoadCallback<AdT> adLoadCallback = this.zzchk;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzvg.zzqc());
        }
    }
}
