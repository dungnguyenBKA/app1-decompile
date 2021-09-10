package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdrf implements Runnable {
    private final zzdrb zzhqd;
    private final zzdqw zzhqe;

    zzdrf(zzdrb zzdrb, zzdqw zzdqw) {
        this.zzhqd = zzdrb;
        this.zzhqe = zzdqw;
    }

    public final void run() {
        zzdrb zzdrb = this.zzhqd;
        zzdrb.zzhpy.zzhpt.zzb(this.zzhqe);
    }
}
