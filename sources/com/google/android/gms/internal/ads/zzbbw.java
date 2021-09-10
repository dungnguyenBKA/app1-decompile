package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbbw implements Runnable {
    private final String zzdjf;
    private final zzbbr zzenn;

    zzbbw(zzbbr zzbbr, String str) {
        this.zzenn = zzbbr;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzenn.zzfd(this.zzdjf);
    }
}
