package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbri implements zzeqb<zzawz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdmw> zzfta;
    private final zzbrj zzfzd;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<zzaxb> zzfzf;

    private zzbri(zzbrj zzbrj, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzaxb> zzeqo4) {
        this.zzfzd = zzbrj;
        this.zzewk = zzeqo;
        this.zzfze = zzeqo2;
        this.zzfta = zzeqo3;
        this.zzfzf = zzeqo4;
    }

    public static zzbri zza(zzbrj zzbrj, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzaxb> zzeqo4) {
        return new zzbri(zzbrj, zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Context context = this.zzewk.get();
        zzazn zzazn = this.zzfze.get();
        zzdmw zzdmw = this.zzfta.get();
        zzaxb zzaxb = this.zzfzf.get();
        if (zzdmw.zzhjk != null) {
            return new zzawm(context, zzazn, zzdmw.zzhjk, zzdmw.zzhjg.zzdsw, zzaxb);
        }
        return null;
    }
}
