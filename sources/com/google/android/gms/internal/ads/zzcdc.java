package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdc implements Runnable {
    private final zzcdx zzgdv;
    private final zzccz zzgfx;

    zzcdc(zzccz zzccz, zzcdx zzcdx) {
        this.zzgfx = zzccz;
        this.zzgdv = zzcdx;
    }

    public final void run() {
        this.zzgfx.zzi(this.zzgdv);
    }
}
