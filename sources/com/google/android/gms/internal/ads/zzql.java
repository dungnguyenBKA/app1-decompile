package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzql implements Runnable {
    private final /* synthetic */ String zzaje;
    private final /* synthetic */ long zzajf;
    private final /* synthetic */ long zzajg;
    private final /* synthetic */ zzqj zzbna;

    zzql(zzqj zzqj, String str, long j, long j2) {
        this.zzbna = zzqj;
        this.zzaje = str;
        this.zzajf = j;
        this.zzajg = j2;
    }

    public final void run() {
        this.zzbna.zzbmz.zzd(this.zzaje, this.zzajf, this.zzajg);
    }
}
