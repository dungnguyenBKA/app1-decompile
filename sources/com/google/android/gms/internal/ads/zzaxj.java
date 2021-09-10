package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxj implements Runnable {
    private final String zzdlo;
    private final zzaxc zzebo;
    private final zzaxv zzebp;

    zzaxj(zzaxc zzaxc, zzaxv zzaxv, String str) {
        this.zzebo = zzaxc;
        this.zzebp = zzaxv;
        this.zzdlo = str;
    }

    public final void run() {
        this.zzebo.zza(this.zzebp, this.zzdlo);
    }
}
