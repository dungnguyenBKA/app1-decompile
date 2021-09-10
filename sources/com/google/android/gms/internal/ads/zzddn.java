package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzddn implements Callable {
    private final zzddk zzhcf;

    zzddn(zzddk zzddk) {
        this.zzhcf = zzddk;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhcf.zzath();
    }
}
