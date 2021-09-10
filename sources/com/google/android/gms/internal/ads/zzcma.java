package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcma implements Runnable {
    private final String zzdjf;
    private final zzclx zzgnl;

    zzcma(zzclx zzclx, String str) {
        this.zzgnl = zzclx;
        this.zzdjf = str;
    }

    public final void run() {
        zzclx zzclx = this.zzgnl;
        zzclx.zzgng.zzgh(this.zzdjf);
    }
}
