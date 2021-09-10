package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdlk implements zzdkc {
    private final String zzdjf;
    private final String zzdlo;
    private final zzauk zzfzl;

    zzdlk(zzauk zzauk, String str, String str2) {
        this.zzfzl = zzauk;
        this.zzdjf = str;
        this.zzdlo = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        zzauk zzauk = this.zzfzl;
        ((zzavz) obj).zza(new zzawi(zzauk.getType(), zzauk.getAmount()), this.zzdjf, this.zzdlo);
    }
}
