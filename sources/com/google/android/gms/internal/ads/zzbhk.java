package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzbhk implements zzdic {
    private final /* synthetic */ zzbgz zzffq;
    private Context zzflt;
    private String zzflu;

    private zzbhk(zzbgz zzbgz) {
        this.zzffq = zzbgz;
    }

    @Override // com.google.android.gms.internal.ads.zzdic
    public final zzdid zzahi() {
        zzeqh.zza(this.zzflt, Context.class);
        zzeqh.zza(this.zzflu, String.class);
        return new zzbhn(this.zzffq, this.zzflt, this.zzflu);
    }

    @Override // com.google.android.gms.internal.ads.zzdic
    public final /* synthetic */ zzdic zzbx(Context context) {
        this.zzflt = (Context) zzeqh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdic
    public final /* synthetic */ zzdic zzfo(String str) {
        this.zzflu = (String) zzeqh.checkNotNull(str);
        return this;
    }
}
