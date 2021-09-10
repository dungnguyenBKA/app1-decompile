package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdee implements Callable {
    private final zzdef zzhcm;

    zzdee(zzdef zzdef) {
        this.zzhcm = zzdef;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhcm.zzatk();
    }
}
