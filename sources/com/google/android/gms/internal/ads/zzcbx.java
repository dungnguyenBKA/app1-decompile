package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcbx implements Runnable {
    private final zzcbu zzgdg;
    private final zzcdx zzgdv;

    zzcbx(zzcbu zzcbu, zzcdx zzcdx) {
        this.zzgdg = zzcbu;
        this.zzgdv = zzcdx;
    }

    public final void run() {
        this.zzgdg.zze(this.zzgdv);
    }
}
