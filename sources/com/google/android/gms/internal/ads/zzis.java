package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* access modifiers changed from: package-private */
public final class zzis extends Thread {
    private final /* synthetic */ AudioTrack zzajp;
    private final /* synthetic */ zzit zzajq;

    zzis(zzit zzit, AudioTrack audioTrack) {
        this.zzajq = zzit;
        this.zzajp = audioTrack;
    }

    public final void run() {
        try {
            this.zzajp.flush();
            this.zzajp.release();
        } finally {
            this.zzajq.zzajy.open();
        }
    }
}
