package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbfb implements Runnable {
    private final String zzdjf;
    private final zzbez zzeuj;

    zzbfb(zzbez zzbez, String str) {
        this.zzeuj = zzbez;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzeuj.zzfn(this.zzdjf);
    }
}
