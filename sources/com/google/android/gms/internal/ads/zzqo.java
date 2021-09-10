package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzqo implements Runnable {
    private final /* synthetic */ zzht zzajm;
    private final /* synthetic */ zzqj zzbna;

    zzqo(zzqj zzqj, zzht zzht) {
        this.zzbna = zzqj;
        this.zzajm = zzht;
    }

    public final void run() {
        this.zzbna.zzbmz.zzk(this.zzajm);
    }
}
