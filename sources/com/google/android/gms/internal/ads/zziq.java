package com.google.android.gms.internal.ads;

final class zziq implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ int zzajn;

    zziq(zzik zzik, int i) {
        this.zzajh = zzik;
        this.zzajn = i;
    }

    public final void run() {
        zzik.zza(this.zzajh).zzx(this.zzajn);
    }
}
