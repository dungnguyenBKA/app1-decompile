package com.google.android.gms.internal.ads;

final /* synthetic */ class zzakq implements Runnable {
    private final zzako zzdje;
    private final String zzdjf;

    zzakq(zzako zzako, String str) {
        this.zzdje = zzako;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzdje.zzdb(this.zzdjf);
    }
}
