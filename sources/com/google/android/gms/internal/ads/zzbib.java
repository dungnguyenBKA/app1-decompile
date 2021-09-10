package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbib implements zzdmo {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzdlh> zzfow;
    private zzeqo<zzdkn<zzchi, zzchb>> zzfoz;
    private zzeqo<zzdnk> zzfpa;
    private zzeqo<zzdmc> zzfpb;
    private zzeqo<zzdmq> zzfpc;
    private zzeqo<zzdmk> zzfpd;

    private zzbib(zzbgz zzbgz, Context context, String str) {
        this.zzffq = zzbgz;
        zzeqb zzbb = zzeqe.zzbb(context);
        this.zzfmh = zzbb;
        this.zzfoz = new zzdks(zzbb, zzbgz.zzeyu, zzbgz.zzeyv);
        this.zzfow = zzeqc.zzau(zzdma.zzas(zzbgz.zzeyu));
        this.zzfpa = zzeqc.zzau(zzdnn.zzavb());
        zzeqo<zzdmc> zzau = zzeqc.zzau(new zzdml(this.zzfmh, zzbgz.zzewz, zzbgz.zzewg, this.zzfoz, this.zzfow, zzdnq.zzavd(), this.zzfpa));
        this.zzfpb = zzau;
        this.zzfpc = zzeqc.zzau(new zzdmv(zzau, this.zzfow, this.zzfpa));
        zzeqb zzbc = zzeqe.zzbc(str);
        this.zzfmi = zzbc;
        this.zzfpd = zzeqc.zzau(new zzdmp(zzbc, this.zzfpb, this.zzfmh, this.zzfow, this.zzfpa));
    }

    @Override // com.google.android.gms.internal.ads.zzdmo
    public final zzdmq zzaie() {
        return this.zzfpc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdmo
    public final zzdmk zzaif() {
        return this.zzfpd.get();
    }
}
