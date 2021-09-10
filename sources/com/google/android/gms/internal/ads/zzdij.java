package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdij implements Runnable {
    private final zzvg zzgzk;
    private final zzdig zzhfq;

    zzdij(zzdig zzdig, zzvg zzvg) {
        this.zzhfq = zzdig;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzdig zzdig = this.zzhfq;
        zzdig.zzhfp.zzhfl.zzc(this.zzgzk);
    }
}
