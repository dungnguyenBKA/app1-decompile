package com.google.android.gms.internal.ads;

import android.view.Surface;

/* access modifiers changed from: package-private */
public final class zzqp implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ Surface zzbnd;

    zzqp(zzqj zzqj, Surface surface) {
        this.zzbna = zzqj;
        this.zzbnd = surface;
    }

    public final void run() {
        this.zzbna.zzbmz.zzb(this.zzbnd);
    }
}
