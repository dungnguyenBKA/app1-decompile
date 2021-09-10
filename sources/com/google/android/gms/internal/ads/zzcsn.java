package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcsn implements zzbnu {
    private final zzdog zzgts;

    private zzcsn(zzdog zzdog) {
        this.zzgts = zzdog;
    }

    static zzbnu zza(zzdog zzdog) {
        return new zzcsn(zzdog);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzzc getVideoController() {
        return this.zzgts.getVideoController();
    }
}
