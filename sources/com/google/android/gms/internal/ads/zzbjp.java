package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;

final class zzbjp implements zzdzl<String> {
    private final /* synthetic */ zzbjq zzfrh;

    zzbjp(zzbjq zzbjq) {
        this.zzfrh = zzbjq;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(String str) {
        int i;
        String str2 = str;
        zzdnx zzdnx = this.zzfrh.zzfrk;
        List<String> zza = this.zzfrh.zzfre.zza(this.zzfrh.zzfrd, this.zzfrh.zzfrj, false, "", str2, this.zzfrh.zzfrj.zzdmp);
        zzr.zzkr();
        if (zzj.zzba(this.zzfrh.context)) {
            i = zzcqs.zzgru;
        } else {
            i = zzcqs.zzgrt;
        }
        zzdnx.zza(zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        int i;
        zzdnx zzdnx = this.zzfrh.zzfrk;
        List<String> zza = this.zzfrh.zzfre.zza(this.zzfrh.zzfrd, this.zzfrh.zzfrj, false, "", "failure_click_attok", this.zzfrh.zzfrj.zzdmp);
        zzr.zzkr();
        if (zzj.zzba(this.zzfrh.context)) {
            i = zzcqs.zzgru;
        } else {
            i = zzcqs.zzgrt;
        }
        zzdnx.zza(zza, i);
    }
}
