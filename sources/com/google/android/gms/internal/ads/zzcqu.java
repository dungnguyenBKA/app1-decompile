package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqu implements Callable {
    private final zzcqr zzgrw;

    zzcqu(zzcqr zzcqr) {
        this.zzgrw = zzcqr;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgrw.getWritableDatabase();
    }
}
