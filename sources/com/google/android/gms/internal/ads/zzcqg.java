package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

public final class zzcqg implements zzdrp {
    private final zzcqb zzgrc;

    zzcqg(zzcqb zzcqb) {
        this.zzgrc = zzcqb;
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str, Throwable th) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() && zzdrk.RENDERER == zzdrk && this.zzgrc.zzaru() != 0) {
            this.zzgrc.zzer(zzr.zzky().b() - this.zzgrc.zzaru());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrk, String str) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() && zzdrk.RENDERER == zzdrk) {
            this.zzgrc.zzfe(zzr.zzky().b());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrk, String str) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() && zzdrk.RENDERER == zzdrk && this.zzgrc.zzaru() != 0) {
            this.zzgrc.zzer(zzr.zzky().b() - this.zzgrc.zzaru());
        }
    }
}
