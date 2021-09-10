package com.google.android.gms.internal.ads;

import android.view.View;

/* access modifiers changed from: package-private */
public final class zzbef implements Runnable {
    private final /* synthetic */ View val$view;
    private final /* synthetic */ zzawz zzerl;
    private final /* synthetic */ int zzerm;
    private final /* synthetic */ zzbee zzern;

    zzbef(zzbee zzbee, View view, zzawz zzawz, int i) {
        this.zzern = zzbee;
        this.val$view = view;
        this.zzerl = zzawz;
        this.zzerm = i;
    }

    public final void run() {
        this.zzern.zza((zzbee) this.val$view, (View) this.zzerl, (zzawz) (this.zzerm - 1));
    }
}
