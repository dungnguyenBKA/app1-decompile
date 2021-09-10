package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdsu implements zzeqb<zzdss> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzazo> zzewo;

    public zzdsu(zzeqo<Executor> zzeqo, zzeqo<zzazo> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewo = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdss(this.zzewf.get(), this.zzewo.get());
    }
}
