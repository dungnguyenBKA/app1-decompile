package com.google.android.gms.internal.ads;

final class zzio implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ int zzajj;
    private final /* synthetic */ long zzajk;
    private final /* synthetic */ long zzajl;

    zzio(zzik zzik, int i, long j, long j2) {
        this.zzajh = zzik;
        this.zzajj = i;
        this.zzajk = j;
        this.zzajl = j2;
    }

    public final void run() {
        zzik.zza(this.zzajh).zzb(this.zzajj, this.zzajk, this.zzajl);
    }
}
