package com.google.android.gms.internal.ads;

import android.view.ViewGroup;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdb implements Runnable {
    private final zzccz zzgfx;
    private final ViewGroup zzgfy;

    zzcdb(zzccz zzccz, ViewGroup viewGroup) {
        this.zzgfx = zzccz;
        this.zzgfy = viewGroup;
    }

    public final void run() {
        this.zzgfx.zzb(this.zzgfy);
    }
}
