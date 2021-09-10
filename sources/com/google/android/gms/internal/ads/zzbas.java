package com.google.android.gms.internal.ads;

final class zzbas implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ int zzejs;
    private final /* synthetic */ int zzejt;

    zzbas(zzbam zzbam, int i, int i2) {
        this.zzejo = zzbam;
        this.zzejs = i;
        this.zzejt = i2;
    }

    public final void run() {
        if (this.zzejo.zzejm != null) {
            this.zzejo.zzejm.zzk(this.zzejs, this.zzejt);
        }
    }
}
