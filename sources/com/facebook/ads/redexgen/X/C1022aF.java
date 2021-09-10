package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.aF  reason: case insensitive filesystem */
public class C1022aF extends AbstractRunnableC0603Kb {
    public final WeakReference<QE> A00;

    public C1022aF(QE qe) {
        this.A00 = new WeakReference<>(qe);
    }

    public C1022aF(WeakReference<QE> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        QE qe = this.A00.get();
        if (qe != null) {
            qe.A0V();
        }
    }
}
