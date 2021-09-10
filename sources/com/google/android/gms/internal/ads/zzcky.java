package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcky implements Runnable {
    private final String zzdjf;
    private final zzckv zzgmf;

    zzcky(zzckv zzckv, String str) {
        this.zzgmf = zzckv;
        this.zzdjf = str;
    }

    public final void run() {
        zzckv zzckv = this.zzgmf;
        zzckv.zzegt.zzel(this.zzdjf);
    }
}
