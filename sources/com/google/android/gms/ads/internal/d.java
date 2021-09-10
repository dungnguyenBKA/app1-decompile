package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* access modifiers changed from: package-private */
public final class d implements View.OnTouchListener {
    private final /* synthetic */ zzl b;

    d(zzl zzl) {
        this.b = zzl;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.b.i == null) {
            return false;
        }
        this.b.i.zza(motionEvent);
        return false;
    }
}
