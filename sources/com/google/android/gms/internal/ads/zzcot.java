package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcot implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzcol zzgpq;

    zzcot(zzcol zzcol, zzdzw zzdzw, zzdzw zzdzw2) {
        this.zzgpq = zzcol;
        this.zzfym = zzdzw;
        this.zzfwq = zzdzw2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgpq.zza(this.zzfym, this.zzfwq);
    }
}
