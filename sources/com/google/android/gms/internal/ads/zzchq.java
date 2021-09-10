package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;

public final class zzchq {
    private final Context context;
    private final zzazn zzbpn;
    private final zzbej zzbqa;
    private final zztu zzeqv;
    private final zzei zzesm;
    private final zzacq zzesn;
    private final zzb zzesp;
    private final zzbts zzgjw;

    public zzchq(zzbej zzbej, Context context2, zzei zzei, zzacq zzacq, zzazn zzazn, zzb zzb, zztu zztu, zzbts zzbts) {
        this.zzbqa = zzbej;
        this.context = context2;
        this.zzesm = zzei;
        this.zzesn = zzacq;
        this.zzbpn = zzazn;
        this.zzesp = zzb;
        this.zzeqv = zztu;
        this.zzgjw = zzbts;
    }

    public final zzbeb zza(zzvs zzvs, zzdmw zzdmw, zzdnb zzdnb) {
        return zzbej.zza(this.context, zzbft.zzb(zzvs), zzvs.zzacy, false, false, this.zzesm, this.zzesn, this.zzbpn, null, new zzchp(this), this.zzesp, this.zzeqv, zzdmw, zzdnb);
    }

    public final zzbeb zze(zzvs zzvs) {
        return zza(zzvs, null, null);
    }
}
