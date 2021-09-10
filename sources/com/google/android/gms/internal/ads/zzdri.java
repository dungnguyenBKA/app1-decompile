package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdri implements zzdzl<O> {
    private final /* synthetic */ zzdqw zzhqf;
    private final /* synthetic */ zzdrb zzhqg;

    zzdri(zzdrb zzdrb, zzdqw zzdqw) {
        this.zzhqg = zzdrb;
        this.zzhqf = zzdqw;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(O o) {
        this.zzhqg.zzhpy.zzhpt.zzc(this.zzhqf);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzhqg.zzhpy.zzhpt.zza(this.zzhqf, th);
    }
}
