package com.google.android.gms.internal.ads;

import android.view.View;

final class zzbei implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzawz zzerl;
    private final /* synthetic */ zzbee zzern;

    zzbei(zzbee zzbee, zzawz zzawz) {
        this.zzern = zzbee;
        this.zzerl = zzawz;
    }

    public final void onViewAttachedToWindow(View view) {
        this.zzern.zza((zzbee) view, (View) this.zzerl, (zzawz) 10);
    }

    public final void onViewDetachedFromWindow(View view) {
    }
}
