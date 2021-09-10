package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;

public final class zzcuo implements zzeqb<zzcul> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcaq> zzgcd;

    public zzcuo(zzeqo<zzbgc> zzeqo, zzeqo<zzcaq> zzeqo2, zzeqo<zzbqx.zza> zzeqo3, zzeqo<zzbwg> zzeqo4) {
        this.zzgca = zzeqo;
        this.zzgcd = zzeqo2;
        this.zzgcb = zzeqo3;
        this.zzgcc = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcul(this.zzgca.get(), this.zzgcd.get(), this.zzgcb.get(), this.zzgcc.get());
    }
}
