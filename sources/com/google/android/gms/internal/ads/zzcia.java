package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcia implements zzbyq {
    private final zzbeb zzeuk;

    private zzcia(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    static zzbyq zzk(zzbeb zzbeb) {
        return new zzcia(zzbeb);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzams() {
        this.zzeuk.destroy();
    }
}
