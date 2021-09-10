package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.4k  reason: invalid class name and case insensitive filesystem */
public final class C02354k {
    public static byte[] A02;
    public static String[] A03;
    @VisibleForTesting
    public final C0819So<AbstractC02274c, C02334i> A00 = new C0819So<>();
    @VisibleForTesting
    public final AnonymousClass2O<AbstractC02274c> A01 = new AnonymousClass2O<>();

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 71);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-99, -59, -61, -60, 112, -64, -62, -65, -58, -71, -76, -75, 112, -74, -68, -79, -73, 112, -96, -94, -107, 112, -65, -62, 112, -96, -97, -93, -92};
    }

    public static void A03() {
        A03 = new String[]{"WXpxlTya5H7kpLIT7UUfzIgXOYds4Vfk", "JVDNa5tAOP", "C1CZfaM4quGDjTOWU4x6KBGTC5pPu33J", "VymAVHyd", "K8p7KG0zsDoAf7GmBTiUCUpdPzk9iS4o", "MydLOSuorekD0WEADrXIrTB2aFx1Ufvf", "1zIVUT6Fxq52O6VZbnoN9TsXnO1jN3fj", "z9Q03TMU5lxkReREt3I6AE4mCa6N3G46"};
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x006e, code lost:
        if ((r6 & 12) == 0) goto L_0x0070;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0087, code lost:
        if ((r6 & 12) == 0) goto L_0x0070;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00c3, code lost:
        if (r5 != 0) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0041, code lost:
        if (r5 != 0) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.facebook.ads.redexgen.X.AnonymousClass4F A00(com.facebook.ads.redexgen.X.AbstractC02274c r8, int r9) {
        /*
        // Method dump skipped, instructions count: 221
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02354k.A00(com.facebook.ads.redexgen.X.4c, int):com.facebook.ads.redexgen.X.4F");
    }

    @Nullable
    public final AnonymousClass4F A04(AbstractC02274c r2) {
        return A00(r2, 8);
    }

    @Nullable
    public final AnonymousClass4F A05(AbstractC02274c r2) {
        return A00(r2, 4);
    }

    public final AbstractC02274c A06(long j) {
        return this.A01.A08(j);
    }

    public final void A07() {
        this.A00.clear();
        this.A01.A09();
    }

    public final void A08() {
        C02334i.A01();
    }

    public final void A09(long j, AbstractC02274c r4) {
        this.A01.A0B(j, r4);
    }

    public final void A0A(AbstractC02274c r3) {
        C02334i r1 = this.A00.get(r3);
        if (r1 == null) {
            r1 = C02334i.A00();
            this.A00.put(r3, r1);
        }
        r1.A00 |= 1;
    }

    public final void A0B(AbstractC02274c r3) {
        C02334i r1 = this.A00.get(r3);
        if (r1 != null) {
            r1.A00 &= -2;
        }
    }

    public final void A0C(AbstractC02274c r3) {
        int A06 = this.A01.A06() - 1;
        while (true) {
            if (A06 < 0) {
                break;
            } else if (r3 == this.A01.A07(A06)) {
                this.A01.A0A(A06);
                break;
            } else {
                A06--;
            }
        }
        C02334i remove = this.A00.remove(r3);
        if (remove != null) {
            C02334i.A02(remove);
        }
    }

    public final void A0D(AbstractC02274c r1) {
        A0B(r1);
    }

    public final void A0E(AbstractC02274c r3, AnonymousClass4F r4) {
        C02334i r1 = this.A00.get(r3);
        if (r1 == null) {
            r1 = C02334i.A00();
            this.A00.put(r3, r1);
        }
        r1.A00 |= 2;
        r1.A02 = r4;
    }

    public final void A0F(AbstractC02274c r3, AnonymousClass4F r4) {
        C02334i r1 = this.A00.get(r3);
        if (r1 == null) {
            r1 = C02334i.A00();
            this.A00.put(r3, r1);
        }
        r1.A01 = r4;
        r1.A00 |= 8;
    }

    public final void A0G(AbstractC02274c r3, AnonymousClass4F r4) {
        C02334i r1 = this.A00.get(r3);
        if (r1 == null) {
            r1 = C02334i.A00();
            this.A00.put(r3, r1);
        }
        r1.A02 = r4;
        r1.A00 |= 4;
    }

    public final void A0H(AbstractC02344j r9) {
        for (int size = this.A00.size() - 1; size >= 0; size--) {
            AbstractC02274c A0A = this.A00.A0A(size);
            C02334i A0B = this.A00.A0B(size);
            if ((A0B.A00 & 3) == 3) {
                r9.AER(A0A);
            } else if ((A0B.A00 & 1) != 0) {
                if (A0B.A02 == null) {
                    r9.AER(A0A);
                } else {
                    AnonymousClass4F r7 = A0B.A02;
                    AnonymousClass4F r6 = A0B.A01;
                    if (A03[5].charAt(20) != 'R') {
                        String[] strArr = A03;
                        strArr[1] = "fJVAe19tdP";
                        strArr[3] = "3fJsXDGb";
                        r9.ACc(A0A, r7, r6);
                    } else {
                        throw new RuntimeException();
                    }
                }
            } else if ((A0B.A00 & 14) == 14) {
                r9.ACa(A0A, A0B.A02, A0B.A01);
            } else if ((A0B.A00 & 12) == 12) {
                r9.ACe(A0A, A0B.A02, A0B.A01);
            } else if ((A0B.A00 & 4) != 0) {
                r9.ACc(A0A, A0B.A02, null);
            } else if ((A0B.A00 & 8) != 0) {
                r9.ACa(A0A, A0B.A02, A0B.A01);
            }
            C02334i.A02(A0B);
        }
    }

    public final boolean A0I(AbstractC02274c r3) {
        C02334i r0 = this.A00.get(r3);
        return (r0 == null || (r0.A00 & 1) == 0) ? false : true;
    }

    public final boolean A0J(AbstractC02274c r2) {
        C02334i r0 = this.A00.get(r2);
        return (r0 == null || (r0.A00 & 4) == 0) ? false : true;
    }
}
