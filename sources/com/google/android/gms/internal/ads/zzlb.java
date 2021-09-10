package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzlb implements zzkz {
    private final zzpn zzawt;
    private final int zzaxb;
    private final int zzaxc;

    public zzlb(zzky zzky) {
        zzpn zzpn = zzky.zzawt;
        this.zzawt = zzpn;
        zzpn.zzbi(12);
        this.zzaxb = zzpn.zzja();
        this.zzaxc = zzpn.zzja();
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgx() {
        return this.zzaxc;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgy() {
        int i = this.zzaxb;
        return i == 0 ? this.zzawt.zzja() : i;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final boolean zzgz() {
        return this.zzaxb != 0;
    }
}
