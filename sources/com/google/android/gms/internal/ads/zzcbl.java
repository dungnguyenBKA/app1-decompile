package com.google.android.gms.internal.ads;

public final class zzcbl implements zzeqb<zzcgk> {
    private final zzcbi zzgdb;

    public zzcbl(zzcbi zzcbi) {
        this.zzgdb = zzcbi;
    }

    public static zzcgk zza(zzcbi zzcbi) {
        return (zzcgk) zzeqh.zza(zzcbi.zzann(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzgdb);
    }
}
