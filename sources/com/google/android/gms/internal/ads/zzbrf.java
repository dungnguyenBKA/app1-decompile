package com.google.android.gms.internal.ads;

public final class zzbrf implements zzeqb<zzdnp> {
    private final zzbqx zzfyz;

    private zzbrf(zzbqx zzbqx) {
        this.zzfyz = zzbqx;
    }

    public static zzbrf zzl(zzbqx zzbqx) {
        return new zzbrf(zzbqx);
    }

    public static zzdnp zzm(zzbqx zzbqx) {
        return (zzdnp) zzeqh.zza(zzbqx.zzall(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzm(this.zzfyz);
    }
}
