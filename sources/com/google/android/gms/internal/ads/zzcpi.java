package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcpi implements zzeqb<zzcpf> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdoc> zzeyk;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<String> zzgle;
    private final zzeqo<zzdnl> zzglp;

    private zzcpi(zzeqo<Context> zzeqo, zzeqo<zzdoc> zzeqo2, zzeqo<zzdnl> zzeqo3, zzeqo<zzdmw> zzeqo4, zzeqo<zzcqr> zzeqo5, zzeqo<zzdrz> zzeqo6, zzeqo<String> zzeqo7) {
        this.zzewk = zzeqo;
        this.zzeyk = zzeqo2;
        this.zzglp = zzeqo3;
        this.zzfrs = zzeqo4;
        this.zzgjo = zzeqo5;
        this.zzgjp = zzeqo6;
        this.zzgle = zzeqo7;
    }

    public static zzcpi zzb(zzeqo<Context> zzeqo, zzeqo<zzdoc> zzeqo2, zzeqo<zzdnl> zzeqo3, zzeqo<zzdmw> zzeqo4, zzeqo<zzcqr> zzeqo5, zzeqo<zzdrz> zzeqo6, zzeqo<String> zzeqo7) {
        return new zzcpi(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpf(this.zzewk.get(), this.zzeyk.get(), this.zzglp.get(), this.zzfrs.get(), this.zzgjo.get(), this.zzgjp.get(), this.zzgle.get());
    }
}
