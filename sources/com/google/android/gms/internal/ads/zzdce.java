package com.google.android.gms.internal.ads;

public final class zzdce implements zzeqb<zzdcc> {
    private final zzeqo<zzdjx> zzfyi;

    private zzdce(zzeqo<zzdjx> zzeqo) {
        this.zzfyi = zzeqo;
    }

    public static zzdce zzan(zzeqo<zzdjx> zzeqo) {
        return new zzdce(zzeqo);
    }

    public static zzdcc zzb(zzdjx zzdjx) {
        return new zzdcc(zzdjx);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfyi.get());
    }
}
