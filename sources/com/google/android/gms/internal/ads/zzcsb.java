package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcsb implements zzbse {
    private final zzbeb zzeuk;

    zzcsb(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zzbeb zzbeb = this.zzeuk;
        if (zzbeb.zzacx() != null) {
            zzbeb.zzacx().zzadv();
        }
    }
}
