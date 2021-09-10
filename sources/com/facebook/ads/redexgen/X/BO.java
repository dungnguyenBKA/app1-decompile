package com.facebook.ads.redexgen.X;

import java.util.Comparator;
import java.util.TreeSet;

public final class BO implements AbstractC1105ba, Comparator<C0539Hl> {
    public static String[] A03;
    public long A00;
    public final long A01;
    public final TreeSet<C0539Hl> A02 = new TreeSet<>(this);

    static {
        A01();
    }

    public static void A01() {
        A03 = new String[]{"qrCZDebBZXOMsu5PI8FdamZv", "usPTrKdLrE7MLvxS6mJMRwkls4hZpcPz", "BDrpv9J1bckqz2zbQbGMwvdv", "cHdTuf55w1r5Lcr9n47avjSAGBdp9rLc", "v1mI", "NFtkBlX9Mz", "lz", "jBDMosIM65rjrOuIbY8WA7ZUxyDm84U3"};
    }

    public BO(long j) {
        this.A01 = j;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compare(C0539Hl hl, C0539Hl hl2) {
        if (hl.A00 - hl2.A00 == 0) {
            return hl.compareTo(hl2);
        }
        return hl.A00 < hl2.A00 ? -1 : 1;
    }

    private void A02(AbstractC0535Hh hh, long j) {
        while (this.A00 + j > this.A01) {
            boolean isEmpty = this.A02.isEmpty();
            if (A03[4].length() != 25) {
                String[] strArr = A03;
                strArr[0] = "3qXh8T5e4LOlD1IWJEc6SNWF";
                strArr[2] = "YJzC3pPkQPrTmiUzc4g95RWz";
                if (!isEmpty) {
                    try {
                        hh.ADA(this.A02.first());
                    } catch (C0533Hf unused) {
                    }
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0534Hg
    public final void ABf(AbstractC0535Hh hh, C0539Hl hl) {
        this.A02.add(hl);
        this.A00 += hl.A01;
        A02(hh, 0);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0534Hg
    public final void ABg(AbstractC0535Hh hh, C0539Hl hl) {
        this.A02.remove(hl);
        this.A00 -= hl.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0534Hg
    public final void ABh(AbstractC0535Hh hh, C0539Hl hl, C0539Hl hl2) {
        ABg(hh, hl);
        ABf(hh, hl2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1105ba
    public final void ABi(AbstractC0535Hh hh, String str, long j, long j2) {
        A02(hh, j2);
    }
}
