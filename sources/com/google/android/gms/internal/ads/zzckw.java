package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

@Deprecated
public final class zzckw extends zzckv {
    private final zzdsh zzgmd;

    public zzckw(Executor executor, zzazo zzazo, zzdsh zzdsh, zzdsj zzdsj) {
        super(executor, zzazo, zzdsj);
        this.zzgmd = zzdsh;
        zzaqw();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzckv
    public final void zzaqw() {
        this.zzgmd.zzq(this.zzgls);
    }

    public final Map<String, String> zzaqx() {
        return new HashMap(this.zzgls);
    }
}
