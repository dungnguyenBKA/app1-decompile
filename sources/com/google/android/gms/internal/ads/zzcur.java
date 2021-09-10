package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;

public final class zzcur implements zzeqb<zzcus> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcxa> zzgva;

    public zzcur(zzeqo<zzbgc> zzeqo, zzeqo<zzbqx.zza> zzeqo2, zzeqo<zzcxa> zzeqo3, zzeqo<zzbwg> zzeqo4) {
        this.zzgca = zzeqo;
        this.zzgcb = zzeqo2;
        this.zzgva = zzeqo3;
        this.zzgcc = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcus(this.zzgca.get(), this.zzgcb.get(), this.zzgva.get(), this.zzgcc.get());
    }
}
