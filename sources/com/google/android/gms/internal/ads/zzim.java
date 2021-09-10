package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzim implements Runnable {
    private final /* synthetic */ String zzaje;
    private final /* synthetic */ long zzajf;
    private final /* synthetic */ long zzajg;
    private final /* synthetic */ zzik zzajh;

    zzim(zzik zzik, String str, long j, long j2) {
        this.zzajh = zzik;
        this.zzaje = str;
        this.zzajf = j;
        this.zzajg = j2;
    }

    public final void run() {
        zzik.zza(this.zzajh).zzb(this.zzaje, this.zzajf, this.zzajg);
    }
}
