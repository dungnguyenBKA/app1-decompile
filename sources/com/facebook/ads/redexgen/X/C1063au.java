package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.au  reason: case insensitive filesystem */
public final class C1063au implements GC {
    public final long[] A00;
    public final GB[] A01;

    public C1063au(GB[] gbArr, long[] jArr) {
        this.A01 = gbArr;
        this.A00 = jArr;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final List<GB> A63(long j) {
        int A0B = C0556Ic.A0B(this.A00, j, true, false);
        if (A0B != -1) {
            GB[] gbArr = this.A01;
            if (gbArr[A0B] != null) {
                return Collections.singletonList(gbArr[A0B]);
            }
        }
        return Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final long A6S(int i) {
        boolean z;
        boolean z2 = true;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        if (i >= this.A00.length) {
            z2 = false;
        }
        C0551Hx.A03(z2);
        return this.A00[i];
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6T() {
        return this.A00.length;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6n(long j) {
        int A0A = C0556Ic.A0A(this.A00, j, false, false);
        if (A0A < this.A00.length) {
            return A0A;
        }
        return -1;
    }
}
