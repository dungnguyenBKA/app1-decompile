package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcpy implements Callable {
    private final zzcpt zzgqn;

    private zzcpy(zzcpt zzcpt) {
        this.zzgqn = zzcpt;
    }

    static Callable zza(zzcpt zzcpt) {
        return new zzcpy(zzcpt);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgqn.getWritableDatabase();
    }
}
