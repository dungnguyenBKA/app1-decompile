package com.google.android.gms.internal.ads;

public final class zzbrd implements zzeqb<String> {
    private final zzeqo<zzbpf> zzfbf;
    private final zzbqx zzfyz;

    private zzbrd(zzbqx zzbqx, zzeqo<zzbpf> zzeqo) {
        this.zzfyz = zzbqx;
        this.zzfbf = zzeqo;
    }

    public static String zza(zzbqx zzbqx, zzbpf zzbpf) {
        return (String) zzeqh.zza(zzbpf.zzxl(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzbrd zzb(zzbqx zzbqx, zzeqo<zzbpf> zzeqo) {
        return new zzbrd(zzbqx, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfyz, this.zzfbf.get());
    }
}
