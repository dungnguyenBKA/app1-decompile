package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdmp implements zzeqb<zzdmk> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdmc> zzgys;
    private final zzeqo<zzdlh> zzhfh;

    public zzdmp(zzeqo<String> zzeqo, zzeqo<zzdmc> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<zzdlh> zzeqo4, zzeqo<zzdnk> zzeqo5) {
        this.zzgyr = zzeqo;
        this.zzgys = zzeqo2;
        this.zzewk = zzeqo3;
        this.zzhfh = zzeqo4;
        this.zzfpa = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmk(this.zzgyr.get(), this.zzgys.get(), this.zzewk.get(), this.zzhfh.get(), this.zzfpa.get());
    }
}
