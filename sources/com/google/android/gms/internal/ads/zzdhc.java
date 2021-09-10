package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdhc implements Callable {
    private final zzdhd zzheq;

    zzdhc(zzdhd zzdhd) {
        this.zzheq = zzdhd;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdhd zzdhd = this.zzheq;
        return new zzdha(zzdhd.zzher.zzf(zzdhd.zzduo));
    }
}
