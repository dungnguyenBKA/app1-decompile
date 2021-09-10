package com.facebook.ads.redexgen.X;

import android.view.View;

public class JK implements View.OnAttachStateChangeListener {
    public final /* synthetic */ JI A00;
    public final /* synthetic */ JJ A01;

    public JK(JJ jj, JI ji) {
        this.A01 = jj;
        this.A00 = ji;
    }

    public final void onViewAttachedToWindow(View view) {
        this.A01.A03(this.A00, null);
    }

    public final void onViewDetachedFromWindow(View view) {
    }
}
