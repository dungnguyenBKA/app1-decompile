package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

public class PY implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ C03087j A00;

    public PY(C03087j r1) {
        this.A00 = r1;
    }

    public final void onAudioFocusChange(int i) {
        new Handler(Looper.getMainLooper()).post(new JH(this, i));
    }
}
