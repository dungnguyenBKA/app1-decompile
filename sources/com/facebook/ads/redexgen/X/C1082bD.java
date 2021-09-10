package com.facebook.ads.redexgen.X;

import android.content.Context;

/* renamed from: com.facebook.ads.redexgen.X.bD  reason: case insensitive filesystem */
public final class C1082bD implements HH {
    public final Context A00;
    public final HH A01;
    public final AbstractC0531Hd<? super HI> A02;

    public C1082bD(Context context, AbstractC0531Hd<? super HI> hd, HH hh) {
        this.A00 = context.getApplicationContext();
        this.A02 = hd;
        this.A01 = hh;
    }

    public C1082bD(Context context, String str, AbstractC0531Hd<? super HI> hd) {
        this(context, hd, (HH) new C01872n(str, hd));
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final C1081bC A4E() {
        return new C1081bC(this.A00, this.A02, this.A01.A4E());
    }
}
