package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;

public final class zzdao implements zzeqb<zzdam> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<ViewGroup> zzgvb;
    private final zzeqo<zzdzv> zzhak;

    public zzdao(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzdnp> zzeqo3, zzeqo<ViewGroup> zzeqo4) {
        this.zzhak = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfvf = zzeqo3;
        this.zzgvb = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdam(this.zzhak.get(), this.zzewk.get(), this.zzfvf.get(), this.zzgvb.get());
    }
}
