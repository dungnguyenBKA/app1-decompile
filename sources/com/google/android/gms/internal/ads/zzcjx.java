package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzcjx implements zzdrp {
    private zztu zzgkx;
    private Map<zzdrk, zzcjz> zzgld;

    zzcjx(zztu zztu, Map<zzdrk, zzcjz> map) {
        this.zzgld = map;
        this.zzgkx = zztu;
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str, Throwable th) {
        if (this.zzgld.containsKey(zzdrk)) {
            this.zzgkx.zza(this.zzgld.get(zzdrk).zzgli);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrk, String str) {
        if (this.zzgld.containsKey(zzdrk)) {
            this.zzgkx.zza(this.zzgld.get(zzdrk).zzglg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrk, String str) {
        if (this.zzgld.containsKey(zzdrk)) {
            this.zzgkx.zza(this.zzgld.get(zzdrk).zzglh);
        }
    }
}
