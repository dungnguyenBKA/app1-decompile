package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzqm implements Runnable {
    private final /* synthetic */ zzjm zzaji;
    private final /* synthetic */ zzqj zzbna;

    zzqm(zzqj zzqj, zzjm zzjm) {
        this.zzbna = zzqj;
        this.zzaji = zzjm;
    }

    public final void run() {
        this.zzbna.zzbmz.zze(this.zzaji);
    }
}
