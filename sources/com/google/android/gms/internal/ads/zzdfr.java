package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdfr implements Callable {
    private final zzdfo zzhdt;

    zzdfr(zzdfo zzdfo) {
        this.zzhdt = zzdfo;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhdt.zzatr();
    }
}
