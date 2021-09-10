package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;

final /* synthetic */ class f implements Runnable {
    private final g b;
    private final Drawable c;

    f(g gVar, Drawable drawable) {
        this.b = gVar;
        this.c = drawable;
    }

    public final void run() {
        g gVar = this.b;
        gVar.a.b.getWindow().setBackgroundDrawable(this.c);
    }
}
