package com.google.android.gms.internal.gtm;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class zzcl implements Callable<String> {
    final /* synthetic */ zzcn zza;

    zzcl(zzcn zzcn) {
        this.zza = zzcn;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        return this.zza.zzc();
    }
}
