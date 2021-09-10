package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzddr implements Callable {
    private final zzddo zzhch;

    zzddr(zzddo zzddo) {
        this.zzhch = zzddo;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhch.zzati();
    }
}
