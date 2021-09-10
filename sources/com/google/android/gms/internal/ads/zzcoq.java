package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcoq implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    zzcoq(zzdzw zzdzw, zzdzw zzdzw2) {
        this.zzgig = zzdzw;
        this.zzfym = zzdzw2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdzw zzdzw = this.zzgig;
        zzdzw zzdzw2 = this.zzfym;
        return new zzcoz((zzcpg) zzdzw.get(), ((zzcpa) zzdzw2.get()).zzgpu, ((zzcpa) zzdzw2.get()).zzgpv);
    }
}
