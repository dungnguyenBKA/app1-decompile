package com.google.android.gms.internal.ads;

import java.util.Map;

final class zzcao implements zzbny<zzbnz> {
    private final zzcco zzfup;
    private final Map<String, zzcrj<zzbnz>> zzfwj;
    private final zzeqo<zzbny<zzblv>> zzgbu;
    private final Map<String, zzcrj<zzcbu>> zzgbv;
    private final Map<String, zzcty<zzcbu>> zzgbw;

    zzcao(Map<String, zzcrj<zzbnz>> map, Map<String, zzcrj<zzcbu>> map2, Map<String, zzcty<zzcbu>> map3, zzeqo<zzbny<zzblv>> zzeqo, zzcco zzcco) {
        this.zzfwj = map;
        this.zzgbv = map2;
        this.zzgbw = map3;
        this.zzgbu = zzeqo;
        this.zzfup = zzcco;
    }

    @Override // com.google.android.gms.internal.ads.zzbny
    public final zzcrj<zzbnz> zze(int i, String str) {
        zzcrj<zzblv> zze;
        zzcrj<zzbnz> zzcrj = this.zzfwj.get(str);
        if (zzcrj != null) {
            return zzcrj;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzcty<zzcbu> zzcty = this.zzgbw.get(str);
            if (zzcty != null) {
                return zzbnz.zza((zzcty<? extends zzbnt>) zzcty);
            }
            zzcrj<zzcbu> zzcrj2 = this.zzgbv.get(str);
            if (zzcrj2 != null) {
                return zzbnz.zza(zzcrj2);
            }
            return null;
        } else if (this.zzfup.zzaom() == null || (zze = this.zzgbu.get().zze(i, str)) == null) {
            return null;
        } else {
            return zzbnz.zza(zze);
        }
    }
}
