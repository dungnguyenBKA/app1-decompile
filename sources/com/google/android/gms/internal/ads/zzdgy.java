package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final /* synthetic */ class zzdgy implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    zzdgy(zzdzw zzdzw, zzdzw zzdzw2) {
        this.zzgig = zzdzw;
        this.zzfym = zzdzw2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzdgw((String) this.zzgig.get(), (String) this.zzfym.get());
    }
}
