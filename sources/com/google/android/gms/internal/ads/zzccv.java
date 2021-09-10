package com.google.android.gms.internal.ads;

public final class zzccv implements zzeqb<zzccd> {
    private final zzccp zzgfg;

    private zzccv(zzccp zzccp) {
        this.zzgfg = zzccp;
    }

    public static zzccv zza(zzccp zzccp) {
        return new zzccv(zzccp);
    }

    public static zzccd zzb(zzccp zzccp) {
        return (zzccd) zzeqh.zza(zzccp.zzaoq(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzgfg);
    }
}
