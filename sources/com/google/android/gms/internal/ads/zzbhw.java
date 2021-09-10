package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbhw implements zzdle {
    private final /* synthetic */ zzbgz zzffq;
    private Context zzflt;
    private String zzflu;
    private zzvs zzfnv;

    private zzbhw(zzbgz zzbgz) {
        this.zzffq = zzbgz;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final zzdlf zzahy() {
        zzeqh.zza(this.zzflt, Context.class);
        zzeqh.zza(this.zzflu, String.class);
        zzeqh.zza(this.zzfnv, zzvs.class);
        return new zzbhz(this.zzffq, this.zzflt, this.zzflu, this.zzfnv);
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzbz(Context context) {
        this.zzflt = (Context) zzeqh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzd(zzvs zzvs) {
        this.zzfnv = (zzvs) zzeqh.checkNotNull(zzvs);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzfq(String str) {
        this.zzflu = (String) zzeqh.checkNotNull(str);
        return this;
    }
}
