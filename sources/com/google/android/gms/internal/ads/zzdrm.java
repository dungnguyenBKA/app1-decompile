package com.google.android.gms.internal.ads;

import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzdrm extends zzbwf<zzdrp> implements zzdrh<zzdrk> {
    zzdrm(Set<zzbya<zzdrp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zza(zzdqw<zzdrk, ?> zzdqw) {
        zza(new zzdrl(zzdqw));
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zzb(zzdqw<zzdrk, ?> zzdqw) {
        zza(new zzdro(zzdqw));
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zzc(zzdqw<zzdrk, ?> zzdqw) {
        zza(new zzdrq(zzdqw));
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zza(zzdqw<zzdrk, ?> zzdqw, Throwable th) {
        zza(new zzdrn(zzdqw, th));
    }
}
