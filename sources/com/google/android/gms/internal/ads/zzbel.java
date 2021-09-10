package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbel implements zzdws {
    private final Context zzcmi;
    private final String zzdlo;
    private final zzbft zzerr;
    private final boolean zzers;
    private final boolean zzert;
    private final zzei zzeru;
    private final zzacq zzerv;
    private final zzazn zzerw;
    private final zzacc zzerx = null;
    private final zzm zzery;
    private final zzb zzerz;
    private final zztu zzesa;
    private final zzdmw zzesb;
    private final zzdnb zzesc;

    zzbel(Context context, zzbft zzbft, String str, boolean z, boolean z2, zzei zzei, zzacq zzacq, zzazn zzazn, zzacc zzacc, zzm zzm, zzb zzb, zztu zztu, zzdmw zzdmw, zzdnb zzdnb) {
        this.zzcmi = context;
        this.zzerr = zzbft;
        this.zzdlo = str;
        this.zzers = z;
        this.zzert = z2;
        this.zzeru = zzei;
        this.zzerv = zzacq;
        this.zzerw = zzazn;
        this.zzery = zzm;
        this.zzerz = zzb;
        this.zzesa = zztu;
        this.zzesb = zzdmw;
        this.zzesc = zzdnb;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final Object get() {
        return zzbej.zzb(this.zzcmi, this.zzerr, this.zzdlo, this.zzers, this.zzert, this.zzeru, this.zzerv, this.zzerw, null, this.zzery, this.zzerz, this.zzesa, this.zzesb, this.zzesc);
    }
}
