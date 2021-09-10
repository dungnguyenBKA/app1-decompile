package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcfk implements zzdyu {
    private final String zzdjf;
    private final String zzdlo;
    private final zzcfi zzgik;

    zzcfk(zzcfi zzcfi, String str, String str2) {
        this.zzgik = zzcfi;
        this.zzdjf = str;
        this.zzdlo = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgik.zza(this.zzdjf, this.zzdlo, obj);
    }
}
