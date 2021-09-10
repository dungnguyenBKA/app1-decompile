package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;

public class BK extends Thread {
    public final /* synthetic */ AudioTrack A00;
    public final /* synthetic */ YQ A01;

    public BK(YQ yq, AudioTrack audioTrack) {
        this.A01 = yq;
        this.A00 = audioTrack;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.release();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
