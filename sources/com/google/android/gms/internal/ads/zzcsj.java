package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcsj implements Runnable {
    private final zzbeb zzggw;
    private final zzcsg zzgtn;

    zzcsj(zzcsg zzcsg, zzbeb zzbeb) {
        this.zzgtn = zzcsg;
        this.zzggw = zzbeb;
    }

    public final void run() {
        this.zzgtn.zzl(this.zzggw);
    }
}
