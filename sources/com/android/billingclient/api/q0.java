package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zza;
import java.util.concurrent.Callable;

final class q0 implements Callable<Void> {
    private final /* synthetic */ a b;
    final /* synthetic */ b c;
    private final /* synthetic */ d d;

    q0(d dVar, a aVar, b bVar) {
        this.d = dVar;
        this.b = aVar;
        this.c = bVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final Void call() {
        try {
            Bundle zzd = this.d.g.zzd(9, this.d.f.getPackageName(), this.b.a(), zza.zza(this.b, this.d.b));
            this.d.u(new s0(this, zza.zza(zzd, "BillingClient"), zza.zzb(zzd, "BillingClient")));
            return null;
        } catch (Exception e) {
            this.d.u(new t0(this, e));
            return null;
        }
    }
}
