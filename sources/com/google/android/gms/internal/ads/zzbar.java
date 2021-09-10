package com.google.android.gms.internal.ads;

final class zzbar implements Runnable {
    private final /* synthetic */ zzbam zzejo;

    zzbar(zzbam zzbam) {
        this.zzejo = zzbam;
    }

    public final void run() {
        if (this.zzejo.zzejm != null) {
            this.zzejo.zzejm.onPaused();
            this.zzejo.zzejm.zzaan();
        }
    }
}
