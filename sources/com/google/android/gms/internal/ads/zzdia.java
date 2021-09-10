package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdia implements zzeqb<zzdhx> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdhv> zzgys;
    private final zzeqo<zzdil> zzhfh;

    public zzdia(zzeqo<zzbgc> zzeqo, zzeqo<Context> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzdhv> zzeqo4, zzeqo<zzdil> zzeqo5, zzeqo<zzazn> zzeqo6) {
        this.zzewg = zzeqo;
        this.zzewk = zzeqo2;
        this.zzgyr = zzeqo3;
        this.zzgys = zzeqo4;
        this.zzhfh = zzeqo5;
        this.zzftb = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdhx(this.zzewg.get(), this.zzewk.get(), this.zzgyr.get(), this.zzgys.get(), this.zzhfh.get(), this.zzftb.get());
    }
}
