package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.d;

public final class zzdsp implements zzeqb<zzdsq> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzhay;
    private final zzeqo<String> zzhbg;
    private final zzeqo<zzcuw> zzhrw;

    private zzdsp(zzeqo<zzcuw> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<String> zzeqo3, zzeqo<String> zzeqo4, zzeqo<Context> zzeqo5, zzeqo<zzdnk> zzeqo6, zzeqo<d> zzeqo7, zzeqo<zzei> zzeqo8) {
        this.zzhrw = zzeqo;
        this.zzftb = zzeqo2;
        this.zzhay = zzeqo3;
        this.zzhbg = zzeqo4;
        this.zzewk = zzeqo5;
        this.zzfpa = zzeqo6;
        this.zzfsz = zzeqo7;
        this.zzfru = zzeqo8;
    }

    public static zzdsp zzb(zzeqo<zzcuw> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<String> zzeqo3, zzeqo<String> zzeqo4, zzeqo<Context> zzeqo5, zzeqo<zzdnk> zzeqo6, zzeqo<d> zzeqo7, zzeqo<zzei> zzeqo8) {
        return new zzdsp(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7, zzeqo8);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsq(this.zzhrw.get(), this.zzftb.get(), this.zzhay.get(), this.zzhbg.get(), this.zzewk.get(), this.zzfpa.get(), this.zzfsz.get(), this.zzfru.get());
    }
}
