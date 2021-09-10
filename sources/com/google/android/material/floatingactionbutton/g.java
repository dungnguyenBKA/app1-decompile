package com.google.android.material.floatingactionbutton;

import android.view.ViewTreeObserver;

/* access modifiers changed from: package-private */
public class g implements ViewTreeObserver.OnPreDrawListener {
    final /* synthetic */ e b;

    g(e eVar) {
        this.b = eVar;
    }

    public boolean onPreDraw() {
        this.b.u();
        return true;
    }
}
