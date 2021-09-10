package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdav implements zzdfi<Object> {
    private final Executor executor;
    private final zzdzw<String> zzham;

    public zzdav(zzdzw<String> zzdzw, Executor executor2) {
        this.zzham = zzdzw;
        this.executor = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<Object> zzasy() {
        return zzdzk.zzb(this.zzham, zzdau.zzboq, this.executor);
    }
}
