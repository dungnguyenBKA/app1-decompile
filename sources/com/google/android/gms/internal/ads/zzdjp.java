package com.google.android.gms.internal.ads;

import java.util.Iterator;

final /* synthetic */ class zzdjp implements zzdyu {
    private final zzdjm zzhgs;
    private final zzdpm zzhgt;
    private final zzbou zzhgu;

    zzdjp(zzdjm zzdjm, zzdpm zzdpm, zzbou zzbou) {
        this.zzhgs = zzdjm;
        this.zzhgt = zzdpm;
        this.zzhgu = zzbou;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        zzdpm zzdpm = this.zzhgt;
        zzbou zzbou = this.zzhgu;
        zzdnl zzdnl = (zzdnl) obj;
        zzdpm.zzeyz = zzdnl;
        Iterator<zzdmw> it = zzdnl.zzhks.zzhkp.iterator();
        boolean z = false;
        boolean z2 = false;
        loop0:
        while (true) {
            if (!it.hasNext()) {
                z = z2;
                break;
            }
            Iterator<String> it2 = it.next().zzhix.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!it2.next().contains("FirstPartyRenderer")) {
                        break loop0;
                    }
                    z2 = true;
                }
            }
        }
        if (!z) {
            return zzdzk.zzag(null);
        }
        return zzbou.zzb(zzdzk.zzag(zzdnl));
    }
}
