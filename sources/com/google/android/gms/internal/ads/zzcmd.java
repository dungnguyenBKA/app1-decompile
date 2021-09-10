package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcmd implements Callable {
    private final zzcme zzgnp;
    private final zzatq zzgnq;

    zzcmd(zzcme zzcme, zzatq zzatq) {
        this.zzgnp = zzcme;
        this.zzgnq = zzatq;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgnp.zzf(this.zzgnq);
    }
}
