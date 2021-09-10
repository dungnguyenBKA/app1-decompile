package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;

public final class zzcut implements zzeqb<zzcuu> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;

    public zzcut(zzeqo<zzbgc> zzeqo, zzeqo<zzbqx.zza> zzeqo2, zzeqo<zzbwg> zzeqo3) {
        this.zzgca = zzeqo;
        this.zzgcb = zzeqo2;
        this.zzgcc = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcuu(this.zzgca.get(), this.zzgcb.get(), this.zzgcc.get());
    }
}
