package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbhn implements zzdid {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzdkn<zzbkx, zzblg>> zzfmj;
    private zzeqo<zzdil> zzfmk;
    private zzeqo<zzdhv> zzfml;
    private zzeqo<zzdhx> zzfmm;
    private zzeqo<zzdkn<zzblk, zzblq>> zzfmn;
    private zzeqo<zzdix> zzfmo;
    private zzeqo<zzdiz> zzfmp;

    private zzbhn(zzbgz zzbgz, Context context, String str) {
        this.zzffq = zzbgz;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfmi = zzeqe.zzbb(str);
        this.zzfmj = new zzdkt(this.zzfmh, zzbgz.zzeyu, zzbgz.zzeyv);
        this.zzfmk = zzeqc.zzau(new zzdiu(zzbgz.zzeyu));
        this.zzfml = zzeqc.zzau(new zzdhu(this.zzfmh, zzbgz.zzewz, zzbgz.zzewg, this.zzfmj, this.zzfmk, zzdnq.zzavd()));
        this.zzfmm = zzeqc.zzau(new zzdia(zzbgz.zzewg, this.zzfmh, this.zzfmi, this.zzfml, this.zzfmk, zzbgz.zzews));
        this.zzfmn = new zzdkq(this.zzfmh, zzbgz.zzeyu, zzbgz.zzeyv);
        this.zzfmo = zzeqc.zzau(new zzdiw(this.zzfmh, zzbgz.zzewz, zzbgz.zzewg, this.zzfmn, this.zzfmk, zzdnq.zzavd()));
        this.zzfmp = zzeqc.zzau(new zzdjf(zzbgz.zzewg, this.zzfmh, this.zzfmi, this.zzfmo, this.zzfmk));
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdhx zzahl() {
        return this.zzfmm.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdiz zzahm() {
        return this.zzfmp.get();
    }
}
