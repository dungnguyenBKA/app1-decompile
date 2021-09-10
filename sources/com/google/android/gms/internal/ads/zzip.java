package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzip implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzht zzajm;

    zzip(zzik zzik, zzht zzht) {
        this.zzajh = zzik;
        this.zzajm = zzht;
    }

    public final void run() {
        zzik.zza(this.zzajh).zzc(this.zzajm);
    }
}
