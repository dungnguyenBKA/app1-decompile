package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzdso implements zzdrz {
    private final zzdsj zzgmc;
    private final zzdsh zzgmd;

    public zzdso(zzdsj zzdsj, zzdsh zzdsh) {
        this.zzgmc = zzdsj;
        this.zzgmd = zzdsh;
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    public final void zzb(zzdsa zzdsa) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    public final String zzc(zzdsa zzdsa) {
        zzdsj zzdsj = this.zzgmc;
        Map<String, String> zzls = zzdsa.zzls();
        this.zzgmd.zzq(zzls);
        return zzdsj.zzr(zzls);
    }
}
