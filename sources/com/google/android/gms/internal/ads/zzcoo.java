package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcoo implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    zzcoo(zzdzw zzdzw, zzdzw zzdzw2) {
        this.zzgig = zzdzw;
        this.zzfym = zzdzw2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzcpd((JSONObject) this.zzgig.get(), (zzatw) this.zzfym.get());
    }
}
