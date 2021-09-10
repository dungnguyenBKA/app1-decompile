package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.checkerframework.checker.nullness.qual.Nullable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.18  reason: invalid class name */
public final class AnonymousClass18 extends C01862m implements JW {
    public C03649v A00 = new C03649v(this, 1, null, null, null);
    @Nullable
    public List<C0720Ot> A01;

    public AnonymousClass18(XJ xj) {
        super(xj);
    }

    public final void A23(QE qe) {
        C03649v r0 = this.A00;
        if (r0 != null) {
            r0.A0f(qe);
        }
    }

    public C03649v getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0g(this.A01);
    }
}
