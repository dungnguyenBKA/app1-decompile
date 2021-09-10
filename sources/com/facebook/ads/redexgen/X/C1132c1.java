package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.c1  reason: case insensitive filesystem */
public class C1132c1 implements JR {
    public WeakReference<C1143cD> A00;

    public C1132c1(C1143cD cDVar) {
        this.A00 = new WeakReference<>(cDVar);
    }

    @Override // com.facebook.ads.redexgen.X.JR
    public final void AB3(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1b(z, false);
        }
    }
}
