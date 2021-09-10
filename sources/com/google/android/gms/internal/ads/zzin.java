package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzin implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzjm zzaji;

    zzin(zzik zzik, zzjm zzjm) {
        this.zzajh = zzik;
        this.zzaji = zzjm;
    }

    public final void run() {
        zzik.zza(this.zzajh).zzc(this.zzaji);
    }
}
