package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzcsz implements Callable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcta zzgub;

    zzcsz(zzcta zzcta, zzdnl zzdnl, zzdmw zzdmw) {
        this.zzgub = zzcta;
        this.zzghw = zzdnl;
        this.zzfva = zzdmw;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgub.zzc(this.zzghw, this.zzfva);
    }
}
