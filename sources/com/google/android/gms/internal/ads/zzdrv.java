package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdrv implements zzdrw {
    private final Executor executor;
    private final zzazo zzegt;

    public zzdrv(Executor executor2, zzazo zzazo) {
        this.executor = executor2;
        this.zzegt = zzazo;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final void zzgv(String str) {
        this.executor.execute(new zzdry(this, str));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzgw(String str) {
        this.zzegt.zzel(str);
    }
}
