package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzczv implements zzdyu {
    private final String zzdlo;
    private final zzczo zzgzl;
    private final zzcgk[] zzgzu;

    zzczv(zzczo zzczo, zzcgk[] zzcgkArr, String str) {
        this.zzgzl = zzczo;
        this.zzgzu = zzcgkArr;
        this.zzdlo = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgzl.zza(this.zzgzu, this.zzdlo, (zzcgk) obj);
    }
}
