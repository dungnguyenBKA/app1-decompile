package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;

public final class zzae {
    private boolean a = false;
    private float b = 1.0f;

    public static float zzbg(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return ((float) streamVolume) / ((float) streamMaxVolume);
    }

    public final synchronized void setAppMuted(boolean z) {
        this.a = z;
    }

    public final synchronized void setAppVolume(float f) {
        this.b = f;
    }

    public final synchronized float zzra() {
        float f;
        synchronized (this) {
            f = this.b;
        }
        if (f >= 0.0f) {
            return f;
        }
        return 1.0f;
    }

    public final synchronized boolean zzrb() {
        return this.a;
    }
}
