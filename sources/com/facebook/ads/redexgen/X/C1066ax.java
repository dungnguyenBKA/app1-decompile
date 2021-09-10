package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.ax  reason: case insensitive filesystem */
public final class C1066ax implements GC {
    public final List<GB> A00;

    public C1066ax(List<GB> list) {
        this.A00 = Collections.unmodifiableList(list);
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final List<GB> A63(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final long A6S(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6T() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6n(long j) {
        return j < 0 ? 0 : -1;
    }
}
