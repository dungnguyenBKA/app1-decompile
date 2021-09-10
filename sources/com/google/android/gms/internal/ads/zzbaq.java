package com.google.android.gms.internal.ads;

final class zzbaq implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ String zzejq;
    private final /* synthetic */ String zzejr;

    zzbaq(zzbam zzbam, String str, String str2) {
        this.zzejo = zzbam;
        this.zzejq = str;
        this.zzejr = str2;
    }

    public final void run() {
        if (this.zzejo.zzejm != null) {
            this.zzejo.zzejm.zzl(this.zzejq, this.zzejr);
        }
    }
}
