package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbhq implements zzdjn {
    private final /* synthetic */ zzbgz zzffq;
    private Context zzflt;
    private String zzflu;
    private zzvs zzfnv;

    private zzbhq(zzbgz zzbgz) {
        this.zzffq = zzbgz;
    }

    @Override // com.google.android.gms.internal.ads.zzdjn
    public final zzdjk zzaht() {
        zzeqh.zza(this.zzflt, Context.class);
        zzeqh.zza(this.zzflu, String.class);
        zzeqh.zza(this.zzfnv, zzvs.class);
        return new zzbht(this.zzffq, this.zzflt, this.zzflu, this.zzfnv);
    }

    @Override // com.google.android.gms.internal.ads.zzdjn
    public final /* synthetic */ zzdjn zzby(Context context) {
        this.zzflt = (Context) zzeqh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdjn
    public final /* synthetic */ zzdjn zzc(zzvs zzvs) {
        this.zzfnv = (zzvs) zzeqh.checkNotNull(zzvs);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdjn
    public final /* synthetic */ zzdjn zzfp(String str) {
        this.zzflu = (String) zzeqh.checkNotNull(str);
        return this;
    }
}
