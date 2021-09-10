package com.facebook.ads.redexgen.X;

import android.util.Pair;

/* renamed from: com.facebook.ads.redexgen.X.Af  reason: case insensitive filesystem */
public abstract class AbstractC0373Af {
    public static String[] A00;
    public static final AbstractC0373Af A01 = new YK();

    public static void A00() {
        A00 = new String[]{"jU13W9NSebta1ZmimveRwiImSwvynw8G", "bR9yhpeYgYLfxjGn405sIF1CLUaNKRNv", "y6GS60dgSiOKDJGhj3wt9T6pcdF3KRzS", "kAdv6lw0fV2hZ8Ef8nLl5eDcrpXJ", "gDoO0sRHxUPo6SrSL989dqr7yWBZykVP", "xoqdGlgoaRmw7wZuwViSR5WxyeJjGGpo", "tn8QhSSQsmhaZqBgPW05rXLjjsf9pF2E", "LT5aPkpwV7"};
    }

    public abstract int A01();

    public abstract int A02();

    public abstract int A05(Object obj);

    public abstract C0371Ad A0B(int i, C0371Ad ad, boolean z);

    public abstract C0372Ae A0E(int i, C0372Ae ae, boolean z, long j);

    static {
        A00();
    }

    public int A03(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 == 1) {
                return i;
            }
            if (i2 != 2) {
                throw new IllegalStateException();
            } else if (i == A07(z)) {
                return A06(z);
            } else {
                return i + 1;
            }
        } else if (i == A07(z)) {
            return -1;
        } else {
            return i + 1;
        }
    }

    public final int A04(int nextWindowIndex, C0371Ad ad, C0372Ae ae, int i, boolean z) {
        int i2 = A0A(nextWindowIndex, ad).A00;
        if (A0C(i2, ae).A01 != nextWindowIndex) {
            return nextWindowIndex + 1;
        }
        int A03 = A03(i2, i, z);
        if (A03 == -1) {
            return -1;
        }
        return A0C(A03, ae).A00;
    }

    public int A06(boolean z) {
        return A0F() ? -1 : 0;
    }

    public int A07(boolean z) {
        if (A0F()) {
            return -1;
        }
        return A02() - 1;
    }

    public final Pair<Integer, Long> A08(C0372Ae ae, C0371Ad ad, int i, long j) {
        return A09(ae, ad, i, j, 0);
    }

    public final Pair<Integer, Long> A09(C0372Ae ae, C0371Ad ad, int i, long j, long j2) {
        C0551Hx.A00(i, 0, A02());
        A0E(i, ae, false, j2);
        if (j == -9223372036854775807L) {
            j = ae.A01();
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = ae.A00;
        long A03 = ae.A03() + j;
        long A07 = A0A(i2, ad).A07();
        while (A07 != -9223372036854775807L) {
            int i3 = (A03 > A07 ? 1 : (A03 == A07 ? 0 : -1));
            if (A00[7].length() != 24) {
                A00[7] = "t4u2YUU8OEdoMFYJ2jQWzxX4wha";
                if (i3 < 0 || i2 >= ae.A01) {
                    break;
                }
                A03 -= A07;
                i2++;
                A07 = A0A(i2, ad).A07();
            } else {
                throw new RuntimeException();
            }
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(A03));
    }

    public final C0371Ad A0A(int i, C0371Ad ad) {
        return A0B(i, ad, false);
    }

    public final C0372Ae A0C(int i, C0372Ae ae) {
        return A0D(i, ae, false);
    }

    public final C0372Ae A0D(int i, C0372Ae ae, boolean z) {
        return A0E(i, ae, z, 0);
    }

    public final boolean A0F() {
        return A02() == 0;
    }

    public final boolean A0G(int i, C0371Ad ad, C0372Ae ae, int i2, boolean z) {
        return A04(i, ad, ae, i2, z) == -1;
    }
}
