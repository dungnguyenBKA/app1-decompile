package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbht implements zzdjk {
    private final /* synthetic */ zzbgz zzffq;
    private final Context zzflt;
    private final String zzflu;
    private zzeqo<Context> zzfmh;
    private final zzvs zzfnv;
    private zzeqo<zzvs> zzfoe;
    private zzeqo<zzcxy> zzfof;
    private zzeqo<zzcys> zzfog;
    private zzeqo<zzdje> zzfoh;

    private zzbht(zzbgz zzbgz, Context context, String str, zzvs zzvs) {
        this.zzffq = zzbgz;
        this.zzflt = context;
        this.zzfnv = zzvs;
        this.zzflu = str;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfoe = zzeqe.zzbb(zzvs);
        this.zzfof = zzeqc.zzau(zzcyn.zzak(zzbgz.zzewy));
        this.zzfog = zzeqc.zzau(zzcyr.zzasl());
        this.zzfoh = zzeqc.zzau(new zzdjl(this.zzfmh, zzbgz.zzewz, this.zzfoe, zzbgz.zzewg, this.zzfof, this.zzfog, zzdnq.zzavd()));
    }

    @Override // com.google.android.gms.internal.ads.zzdjk
    public final zzcxw zzahw() {
        return new zzcxw(this.zzflt, this.zzfnv, this.zzflu, this.zzfoh.get(), this.zzfof.get());
    }
}
