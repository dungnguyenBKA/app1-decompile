package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcke implements zzeqb<zzckb> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<zzdoc> zzeyk;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdnl> zzglp;

    private zzcke(zzeqo<Context> zzeqo, zzeqo<zzdoc> zzeqo2, zzeqo<zzckn> zzeqo3, zzeqo<zzdnl> zzeqo4, zzeqo<zzdmw> zzeqo5, zzeqo<zzcqr> zzeqo6) {
        this.zzewk = zzeqo;
        this.zzeyk = zzeqo2;
        this.zzexw = zzeqo3;
        this.zzglp = zzeqo4;
        this.zzfrs = zzeqo5;
        this.zzgjo = zzeqo6;
    }

    public static zzcke zza(zzeqo<Context> zzeqo, zzeqo<zzdoc> zzeqo2, zzeqo<zzckn> zzeqo3, zzeqo<zzdnl> zzeqo4, zzeqo<zzdmw> zzeqo5, zzeqo<zzcqr> zzeqo6) {
        return new zzcke(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckb(this.zzewk.get(), this.zzeyk.get(), this.zzexw.get(), this.zzglp.get(), this.zzfrs.get(), this.zzgjo.get());
    }
}
