package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzcan implements zzeqb<zzcao> {
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<Map<String, zzcrj<zzbnz>>> zzfwl;
    private final zzeqo<Map<String, zzcrj<zzcbu>>> zzgbs;
    private final zzeqo<Map<String, zzcty<zzcbu>>> zzgbt;
    private final zzeqo<zzbny<zzblv>> zzgbu;

    public zzcan(zzeqo<Map<String, zzcrj<zzbnz>>> zzeqo, zzeqo<Map<String, zzcrj<zzcbu>>> zzeqo2, zzeqo<Map<String, zzcty<zzcbu>>> zzeqo3, zzeqo<zzbny<zzblv>> zzeqo4, zzeqo<zzcco> zzeqo5) {
        this.zzfwl = zzeqo;
        this.zzgbs = zzeqo2;
        this.zzgbt = zzeqo3;
        this.zzgbu = zzeqo4;
        this.zzfuw = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcao(this.zzfwl.get(), this.zzgbs.get(), this.zzgbt.get(), this.zzgbu, this.zzfuw.get());
    }
}
