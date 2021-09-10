package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzcpp implements zzeqb<zzcpn> {
    private final zzeqo<Set<zzcpq>> zzglz;
    private final zzeqo<zzdsa> zzgqg;

    private zzcpp(zzeqo<Set<zzcpq>> zzeqo, zzeqo<zzdsa> zzeqo2) {
        this.zzglz = zzeqo;
        this.zzgqg = zzeqo2;
    }

    public static zzcpp zzam(zzeqo<Set<zzcpq>> zzeqo, zzeqo<zzdsa> zzeqo2) {
        return new zzcpp(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpn(this.zzglz.get(), this.zzgqg.get());
    }
}
