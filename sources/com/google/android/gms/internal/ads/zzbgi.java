package com.google.android.gms.internal.ads;

public final class zzbgi implements zzeqb<zzcro<zzdog, zzctd>> {
    private final zzbgb zzewc;
    private final zzeqo<zzcin> zzewd;

    public zzbgi(zzbgb zzbgb, zzeqo<zzcin> zzeqo) {
        this.zzewc = zzbgb;
        this.zzewd = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcro) zzeqh.zza(new zzctv(this.zzewd.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
