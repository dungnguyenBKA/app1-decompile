package com.google.android.gms.internal.ads;

public final class zzbmi implements zzeqb<zzbnu> {
    private final zzbmc zzfvc;

    public zzbmi(zzbmc zzbmc) {
        this.zzfvc = zzbmc;
    }

    public static zzbnu zzc(zzbmc zzbmc) {
        return (zzbnu) zzeqh.zza(zzbmc.zzakd(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzc(this.zzfvc);
    }
}
