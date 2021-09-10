package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcon implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    zzcon(zzdzw zzdzw, zzdzw zzdzw2, zzdzw zzdzw3) {
        this.zzgig = zzdzw;
        this.zzfym = zzdzw2;
        this.zzfwq = zzdzw3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzcoz((zzcpg) this.zzgig.get(), (JSONObject) this.zzfym.get(), (zzatw) this.zzfwq.get());
    }
}
