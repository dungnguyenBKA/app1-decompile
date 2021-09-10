package com.google.android.gms.internal.ads;

public final class zzcpk implements zzeqb<zzcph> {
    private final zzeqo<zzayy> zzezq;
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<zzdsa> zzgqg;

    private zzcpk(zzeqo<zzdsa> zzeqo, zzeqo<zzdrz> zzeqo2, zzeqo<zzayy> zzeqo3) {
        this.zzgqg = zzeqo;
        this.zzgjp = zzeqo2;
        this.zzezq = zzeqo3;
    }

    public static zzcpk zzy(zzeqo<zzdsa> zzeqo, zzeqo<zzdrz> zzeqo2, zzeqo<zzayy> zzeqo3) {
        return new zzcpk(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcph(this.zzgqg.get(), this.zzgjp.get(), this.zzezq.get());
    }
}
