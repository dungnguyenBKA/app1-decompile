package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;

@Deprecated
public final class zzckn {
    private final Executor executor;
    private final zzckw zzglo;
    private final Map<String, String> zzgls;

    public zzckn(zzckw zzckw, Executor executor2) {
        this.zzglo = zzckw;
        this.zzgls = zzckw.zzaqx();
        this.executor = executor2;
    }

    public final zzckq zzaqr() {
        return zzckq.zzb(new zzckq(this));
    }
}
