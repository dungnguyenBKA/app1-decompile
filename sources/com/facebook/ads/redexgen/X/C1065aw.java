package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.aw  reason: case insensitive filesystem */
public final class C1065aw implements GC {
    public static final C1065aw A01 = new C1065aw();
    public final List<GB> A00;

    public C1065aw() {
        this.A00 = Collections.emptyList();
    }

    public C1065aw(GB gb) {
        this.A00 = Collections.singletonList(gb);
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
