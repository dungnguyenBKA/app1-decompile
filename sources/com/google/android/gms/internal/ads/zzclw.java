package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzclw implements Callable {
    private final zzclq zzgmp;

    zzclw(zzclq zzclq) {
        this.zzgmp = zzclq;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgmp.zzare();
    }
}
