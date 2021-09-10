package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Context;
import android.util.DisplayMetrics;

/* renamed from: com.facebook.ads.redexgen.X.Vj  reason: case insensitive filesystem */
public final class C0889Vj extends AnonymousClass6V {
    public ContentResolver A00;
    public DisplayMetrics A01;

    public C0889Vj(Context context, C02715v r3) {
        super(context, r3);
        this.A01 = context.getResources().getDisplayMetrics();
        this.A00 = context.getContentResolver();
    }

    public final AbstractC02806e A0H() {
        return new C0888Vi(this);
    }

    public final AbstractC02806e A0I() {
        return new C0885Vf(this);
    }

    public final AbstractC02806e A0J() {
        return new C0886Vg(this);
    }

    public final AbstractC02806e A0K() {
        return new C0884Ve(this);
    }

    public final AbstractC02806e A0L() {
        return new C0887Vh(this);
    }
}
