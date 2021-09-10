package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

final class zzcnd implements zzdzl<zzdnl> {
    private final /* synthetic */ zzcnc zzgoj;

    zzcnd(zzcnc zzcnc) {
        this.zzgoj = zzcnc;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzdnl zzdnl) {
        zzdnl zzdnl2 = zzdnl;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue()) {
            this.zzgoj.zzgoh.zzea(zzdnl2.zzhks.zzess.responseCode);
            this.zzgoj.zzgoh.zzeq(zzdnl2.zzhks.zzess.zzgqe);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue()) {
            Matcher matcher = zzcnc.zzgoi.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zzgoj.zzgoh.zzea(Integer.parseInt(matcher.group(1)));
            }
        }
    }
}
