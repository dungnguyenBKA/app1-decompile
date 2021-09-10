package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzctn implements zzcag {
    private zzbsd zzfxz = null;
    private final zzdmw zzfya;
    private final zzapk zzgul;
    private final boolean zzgum;

    zzctn(zzdmw zzdmw, zzapk zzapk, boolean z) {
        this.zzfya = zzdmw;
        this.zzgul = zzapk;
        this.zzgum = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        boolean z2;
        try {
            if (this.zzgum) {
                z2 = this.zzgul.zzaa(aw.Q(context));
            } else {
                z2 = this.zzgul.zzz(aw.Q(context));
            }
            if (!z2) {
                throw new zzcaf("Adapter failed to show.");
            } else if (this.zzfxz != null) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcre)).booleanValue() && this.zzfya.zzhjs == 2) {
                    this.zzfxz.onAdImpression();
                }
            }
        } catch (Throwable th) {
            throw new zzcaf(th);
        }
    }

    public final void zza(zzbsd zzbsd) {
        this.zzfxz = zzbsd;
    }
}
