package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;

final class zzbbq implements Runnable {
    private boolean zzbsx = false;
    private zzbax zzekr;

    zzbbq(zzbax zzbax) {
        this.zzekr = zzbax;
    }

    private final void zzabo() {
        zzdvl zzdvl = zzj.zzeen;
        zzdvl.removeCallbacks(this);
        zzdvl.postDelayed(this, 250);
    }

    public final void pause() {
        this.zzbsx = true;
        this.zzekr.zzaas();
    }

    public final void resume() {
        this.zzbsx = false;
        zzabo();
    }

    public final void run() {
        if (!this.zzbsx) {
            this.zzekr.zzaas();
            zzabo();
        }
    }
}
