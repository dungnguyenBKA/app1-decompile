package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

final class zzbao implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ MediaPlayer zzejp;

    zzbao(zzbam zzbam, MediaPlayer mediaPlayer) {
        this.zzejo = zzbam;
        this.zzejp = mediaPlayer;
    }

    public final void run() {
        this.zzejo.zza((zzbam) this.zzejp);
        if (this.zzejo.zzejm != null) {
            this.zzejo.zzejm.zzfb();
        }
    }
}
