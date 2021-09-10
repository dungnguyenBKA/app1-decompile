package com.google.android.gms.internal.ads;

public final class zzbml implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzbnm> zzftr;
    private final zzbmc zzfvc;

    public zzbml(zzbmc zzbmc, zzeqo<zzbnm> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzftr = zzeqo;
    }

    public static zzbya<zzbtb> zza(zzbmc zzbmc, zzbnm zzbnm) {
        return (zzbya) zzeqh.zza(new zzbya(zzbnm, zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzftr.get());
    }
}
