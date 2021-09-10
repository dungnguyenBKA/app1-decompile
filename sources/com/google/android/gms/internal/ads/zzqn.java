package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzqn implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ int zzbnb;
    private final /* synthetic */ long zzbnc;

    zzqn(zzqj zzqj, int i, long j) {
        this.zzbna = zzqj;
        this.zzbnb = i;
        this.zzbnc = j;
    }

    public final void run() {
        this.zzbna.zzbmz.zzg(this.zzbnb, this.zzbnc);
    }
}
