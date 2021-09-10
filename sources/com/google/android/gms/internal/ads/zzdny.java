package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdny implements zzaif {
    private final zzdss zzhlk;
    private final zzcqr zzhll;

    zzdny(zzdss zzdss, zzcqr zzcqr) {
        this.zzhlk = zzdss;
        this.zzhll = zzcqr;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        zzdss zzdss = this.zzhlk;
        zzcqr zzcqr = this.zzhll;
        zzbdu zzbdu = (zzbdu) obj;
        String str = (String) map.get("u");
        if (str == null) {
            zzazk.zzex("URL missing from httpTrack GMSG.");
        } else if (!zzbdu.zzacp().zzhjz) {
            zzdss.zzel(str);
        } else {
            zzcqr.zza(new zzcrc(zzr.zzky().a(), ((zzbfa) zzbdu).zzadn().zzbvs, str, zzcqs.zzgru));
        }
    }
}
