package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzqr implements Runnable {
    private final /* synthetic */ zzjm zzajo;
    private final /* synthetic */ zzqj zzbna;

    zzqr(zzqj zzqj, zzjm zzjm) {
        this.zzbna = zzqj;
        this.zzajo = zzjm;
    }

    public final void run() {
        this.zzajo.zzgn();
        this.zzbna.zzbmz.zzf(this.zzajo);
    }
}
