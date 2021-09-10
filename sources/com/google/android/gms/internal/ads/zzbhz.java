package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbhz implements zzdlf {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzvs> zzfoe;
    private zzeqo<zzcxy> zzfof;
    private zzeqo<zzdlh> zzfow;
    private zzeqo<zzdkx> zzfox;
    private zzeqo<zzcyt> zzfoy;

    private zzbhz(zzbgz zzbgz, Context context, String str, zzvs zzvs) {
        this.zzffq = zzbgz;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfoe = zzeqe.zzbb(zzvs);
        this.zzfmi = zzeqe.zzbb(str);
        this.zzfof = zzeqc.zzau(zzcyn.zzak(zzbgz.zzewy));
        this.zzfow = zzeqc.zzau(zzdma.zzas(zzbgz.zzeyu));
        zzeqo<zzdkx> zzau = zzeqc.zzau(new zzdlc(this.zzfmh, zzbgz.zzewz, zzbgz.zzewg, this.zzfof, this.zzfow, zzdnq.zzavd()));
        this.zzfox = zzau;
        this.zzfoy = zzeqc.zzau(new zzcyv(this.zzfmh, this.zzfoe, this.zzfmi, zzau, this.zzfof, this.zzfow));
    }

    @Override // com.google.android.gms.internal.ads.zzdlf
    public final zzcyt zzaic() {
        return this.zzfoy.get();
    }
}
