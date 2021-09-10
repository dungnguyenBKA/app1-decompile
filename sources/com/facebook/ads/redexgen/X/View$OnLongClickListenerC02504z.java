package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.4z  reason: invalid class name and case insensitive filesystem */
public class View$OnLongClickListenerC02504z implements View.OnLongClickListener {
    public final /* synthetic */ AnonymousClass50 A00;

    public View$OnLongClickListenerC02504z(AnonymousClass50 r1) {
        this.A00 = r1;
    }

    public /* synthetic */ View$OnLongClickListenerC02504z(AnonymousClass50 r1, C02474w r2) {
        this(r1);
    }

    public final boolean onLongClick(View view) {
        if (!(this.A00.A0B == null || this.A00.A06 == null)) {
            this.A00.A0B.setBounds(0, 0, this.A00.A06.getWidth(), this.A00.A06.getHeight());
            this.A00.A0B.A0E(!this.A00.A0B.A0F());
        }
        return true;
    }
}
