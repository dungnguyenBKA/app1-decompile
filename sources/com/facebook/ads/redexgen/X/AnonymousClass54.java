package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.54  reason: invalid class name */
public class AnonymousClass54 implements View.OnLongClickListener {
    public final /* synthetic */ C0829Ta A00;
    public final /* synthetic */ C0676Na A01;

    public AnonymousClass54(C0829Ta ta, C0676Na na) {
        this.A00 = ta;
        this.A01 = na;
    }

    public final boolean onLongClick(View view) {
        if (this.A00.A00 != null) {
            this.A01.setBounds(0, 0, this.A00.A00.getWidth(), this.A00.A00.getHeight());
            C0676Na na = this.A01;
            na.A0E(!na.A0F());
        }
        return true;
    }
}
