package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

public class ZR implements AbstractC0677Nb {
    public final WeakReference<C03579o> A00;

    public ZR(C03579o r2) {
        this.A00 = new WeakReference<>(r2);
    }

    public /* synthetic */ ZR(C03579o r1, C03629t r2) {
        this(r1);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0677Nb
    public final void AAJ(boolean z) {
        C03579o r0 = this.A00.get();
        if (r0 != null) {
            r0.A04 = z;
            r0.A02();
        }
    }
}
