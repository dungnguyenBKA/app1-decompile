package com.google.android.gms.internal.gtm;

import java.util.concurrent.Callable;

final class zzbp implements Callable<Void> {
    final /* synthetic */ zzbq zza;

    zzbp(zzbq zzbq) {
        this.zza = zzbq;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        this.zza.zza.zzac();
        return null;
    }
}
