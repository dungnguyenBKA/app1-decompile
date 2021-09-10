package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.List;

public final class zzdnx {
    private final zzcqr zzdie;
    private final zzdmw zzesr;
    private final zzdnb zzess;
    private final zzdss zzfrf;

    public zzdnx(zzcqr zzcqr, zzdss zzdss, zzdmw zzdmw, zzdnb zzdnb) {
        this.zzesr = zzdmw;
        this.zzess = zzdnb;
        this.zzdie = zzcqr;
        this.zzfrf = zzdss;
    }

    private final void zzb(String str, int i) {
        if (!this.zzesr.zzhjz) {
            this.zzfrf.zzel(str);
            return;
        }
        this.zzdie.zza(new zzcrc(zzr.zzky().a(), this.zzess.zzbvs, str, i));
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;)V */
    public final void zza(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), i);
        }
    }

    public final void zzj(List<String> list) {
        for (String str : list) {
            zzb(str, zzcqs.zzgru);
        }
    }
}
