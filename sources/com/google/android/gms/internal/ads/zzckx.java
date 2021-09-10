package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzckx implements zzeqb<zzckw> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzdsh> zzewt;
    private final zzeqo<zzazo> zzexv;
    private final zzeqo<zzdsj> zzgme;

    public zzckx(zzeqo<Executor> zzeqo, zzeqo<zzazo> zzeqo2, zzeqo<zzdsh> zzeqo3, zzeqo<zzdsj> zzeqo4) {
        this.zzewf = zzeqo;
        this.zzexv = zzeqo2;
        this.zzewt = zzeqo3;
        this.zzgme = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckw(this.zzewf.get(), this.zzexv.get(), this.zzewt.get(), this.zzgme.get());
    }
}
