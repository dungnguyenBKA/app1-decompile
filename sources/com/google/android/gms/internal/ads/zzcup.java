package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbqx;

public final class zzcup implements zzeqb<zzcuq> {
    private final zzeqo<zzbts> zzfyg;
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcaq> zzgcd;
    private final zzeqo<zzcxa> zzgva;
    private final zzeqo<ViewGroup> zzgvb;

    public zzcup(zzeqo<zzbgc> zzeqo, zzeqo<zzbqx.zza> zzeqo2, zzeqo<zzcxa> zzeqo3, zzeqo<zzbwg> zzeqo4, zzeqo<zzcaq> zzeqo5, zzeqo<zzbts> zzeqo6, zzeqo<ViewGroup> zzeqo7) {
        this.zzgca = zzeqo;
        this.zzgcb = zzeqo2;
        this.zzgva = zzeqo3;
        this.zzgcc = zzeqo4;
        this.zzgcd = zzeqo5;
        this.zzfyg = zzeqo6;
        this.zzgvb = zzeqo7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcuq(this.zzgca.get(), this.zzgcb.get(), this.zzgva.get(), this.zzgcc.get(), this.zzgcd.get(), this.zzfyg.get(), this.zzgvb.get());
    }
}
