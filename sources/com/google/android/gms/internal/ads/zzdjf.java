package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdjf implements zzeqb<zzdiz> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Context> zzewk;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdix> zzgys;
    private final zzeqo<zzdil> zzhfh;

    public zzdjf(zzeqo<zzbgc> zzeqo, zzeqo<Context> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzdix> zzeqo4, zzeqo<zzdil> zzeqo5) {
        this.zzewg = zzeqo;
        this.zzewk = zzeqo2;
        this.zzgyr = zzeqo3;
        this.zzgys = zzeqo4;
        this.zzhfh = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdiz(this.zzewg.get(), this.zzewk.get(), this.zzgyr.get(), this.zzgys.get(), this.zzhfh.get());
    }
}
