package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzbbp implements AudioManager.OnAudioFocusChangeListener {
    private float zzdi = 1.0f;
    private boolean zzekb;
    private final AudioManager zzenb;
    private final zzbbs zzenc;
    private boolean zzend;
    private boolean zzene;

    public zzbbp(Context context, zzbbs zzbbs) {
        this.zzenb = (AudioManager) context.getSystemService("audio");
        this.zzenc = zzbbs;
    }

    private final void zzabn() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = this.zzekb && !this.zzene && this.zzdi > 0.0f;
        if (z4 && !(z2 = this.zzend)) {
            AudioManager audioManager = this.zzenb;
            if (audioManager != null && !z2) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z3 = true;
                }
                this.zzend = z3;
            }
            this.zzenc.zzaaj();
        } else if (!z4 && (z = this.zzend)) {
            AudioManager audioManager2 = this.zzenb;
            if (audioManager2 != null && z) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z3 = true;
                }
                this.zzend = z3;
            }
            this.zzenc.zzaaj();
        }
    }

    public final float getVolume() {
        float f = this.zzene ? 0.0f : this.zzdi;
        if (this.zzend) {
            return f;
        }
        return 0.0f;
    }

    public final void onAudioFocusChange(int i) {
        this.zzend = i > 0;
        this.zzenc.zzaaj();
    }

    public final void setMuted(boolean z) {
        this.zzene = z;
        zzabn();
    }

    public final void setVolume(float f) {
        this.zzdi = f;
        zzabn();
    }

    public final void zzaaz() {
        this.zzekb = true;
        zzabn();
    }

    public final void zzaba() {
        this.zzekb = false;
        zzabn();
    }
}
