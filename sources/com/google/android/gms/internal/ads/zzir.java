package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzir implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzjm zzajo;

    zzir(zzik zzik, zzjm zzjm) {
        this.zzajh = zzik;
        this.zzajo = zzjm;
    }

    public final void run() {
        this.zzajo.zzgn();
        zzik.zza(this.zzajh).zzd(this.zzajo);
    }
}
