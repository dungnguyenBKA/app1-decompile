package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* renamed from: com.facebook.ads.redexgen.X.0s  reason: invalid class name and case insensitive filesystem */
public final class C01400s {
    public static AbstractC01350n A00;

    public final AbstractC01350n A00(AdPlacementType adPlacementType) {
        AbstractC01350n r0 = A00;
        if (r0 != null) {
            return r0;
        }
        int i = C01390r.A00[adPlacementType.ordinal()];
        if (i == 1) {
            return new C0791Rm();
        }
        if (i == 2) {
            return new C0792Rn();
        }
        if (i == 3) {
            return new C0794Rp();
        }
        if (i == 4) {
            return new C0482Fd();
        }
        if (i != 5) {
            return null;
        }
        return new FU();
    }
}
