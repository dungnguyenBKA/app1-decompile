package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

public class YJ implements AbstractC0677Nb {
    public final WeakReference<AbstractC03499g> A00;

    public YJ(AbstractC03499g r2) {
        this.A00 = new WeakReference<>(r2);
    }

    public /* synthetic */ YJ(AbstractC03499g r1, C03549l r2) {
        this(r1);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0677Nb
    public final void AAJ(boolean z) {
        AbstractC03499g r0 = this.A00.get();
        if (r0 != null) {
            r0.A06 = z;
            r0.A01();
        }
    }
}
