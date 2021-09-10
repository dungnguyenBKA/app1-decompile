package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzctc implements Runnable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcta zzgub;

    zzctc(zzcta zzcta, zzdnl zzdnl, zzdmw zzdmw) {
        this.zzgub = zzcta;
        this.zzghw = zzdnl;
        this.zzfva = zzdmw;
    }

    public final void run() {
        this.zzgub.zzd(this.zzghw, this.zzfva);
    }
}
