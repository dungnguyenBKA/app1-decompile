package com.facebook.ads.redexgen.X;

import android.util.Pair;
import androidx.annotation.Nullable;

public final class AI {
    public static String[] A0C;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public AG A04;
    public AG A05;
    public AG A06;
    public AbstractC0373Af A07;
    public Object A08;
    public boolean A09;
    public final C0371Ad A0A = new C0371Ad();
    public final C0372Ae A0B = new C0372Ae();

    static {
        A08();
    }

    /* JADX WARNING: Error to parse debug info: Index 22 out of bounds for length 22 in method: com.facebook.ads.redexgen.X.AI.A02(int, long, long):com.facebook.ads.redexgen.X.AH, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 22
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:221)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:127)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    private AH A02(int i, long j, long j2) {
        FC fc = new FC(i, j2);
        this.A07.A0A(fc.A02, this.A0A);
        int A042 = this.A0A.A04(j);
        long A092 = A042 == -1 ? Long.MIN_VALUE : this.A0A.A09(A042);
        boolean A0B2 = A0B(fc, A092);
        return new AH(fc, j, A092, -9223372036854775807L, A092 == Long.MIN_VALUE ? this.A0A.A07() : A092, A0B2, A0C(fc, A0B2));
    }

    public static void A08() {
        A0C = new String[]{"L0u3smBC6U6OaYtXppAd31iOC3v5Qhxz", "mD", "DMmTpdJrujAgbmCwwmXMokmpSOB8XVVu", "Fa0SCWKpXCwAFqaC3HE", "LFAAfAeIJjtENyizMXbJJCIXxkMYQ2BS", "EOXOixXcPNGoqbhwUMphXmxbz6TL9K", "ydRMenJrqCbsHYuDZ17G4nGASKkEf2si", "4zZeHgY0eMzISLpxtPc37pmrQXWGSxn"};
    }

    /* JADX INFO: Multiple debug info for r0v8 int: [D('indexOfHolderInTimeline' int), D('holderWindowIndex' int)] */
    private long A00(int i) {
        int oldFrontPeriodIndex;
        Object obj = this.A07.A0B(i, this.A0A, true).A03;
        int i2 = this.A0A.A00;
        Object obj2 = this.A08;
        if (!(obj2 == null || (oldFrontPeriodIndex = this.A07.A05(obj2)) == -1 || this.A07.A0A(oldFrontPeriodIndex, this.A0A).A00 != i2)) {
            return this.A03;
        }
        for (AG A0F = A0F(); A0F != null; A0F = A0F.A01) {
            if (A0F.A09.equals(obj)) {
                return A0F.A02.A04.A03;
            }
        }
        for (AG A0F2 = A0F(); A0F2 != null; A0F2 = A0F2.A01) {
            int A052 = this.A07.A05(A0F2.A09);
            if (A052 != -1 && this.A07.A0A(A052, this.A0A).A00 == i2) {
                return A0F2.A02.A04.A03;
            }
        }
        long j = this.A02;
        this.A02 = 1 + j;
        return j;
    }

    private AH A01(int i, int i2, int i3, long durationUs, long j) {
        long j2;
        FC fc = new FC(i, i2, i3, j);
        boolean A0B2 = A0B(fc, Long.MIN_VALUE);
        boolean A0C2 = A0C(fc, A0B2);
        long A0A2 = this.A07.A0A(fc.A02, this.A0A).A0A(fc.A00, fc.A01);
        if (i3 == this.A0A.A02(i2)) {
            j2 = this.A0A.A06();
        } else {
            j2 = 0;
        }
        return new AH(fc, j2, Long.MIN_VALUE, durationUs, A0A2, A0B2, A0C2);
    }

    /* JADX INFO: Multiple debug info for r1v1 com.facebook.ads.redexgen.X.FC: [D('nextPeriodIndex' int), D('currentPeriodId' com.facebook.ads.redexgen.X.FC)] */
    @Nullable
    private AH A03(AG ag, long j) {
        long j2;
        AH ah = ag.A02;
        if (ah.A06) {
            int A042 = this.A07.A04(ah.A04.A02, this.A0A, this.A0B, this.A01, this.A09);
            if (A042 == -1) {
                return null;
            }
            int i = this.A07.A0B(A042, this.A0A, true).A00;
            Object obj = this.A0A.A03;
            long j3 = ah.A04.A03;
            if (this.A07.A0C(i, this.A0B).A00 == A042) {
                Pair<Integer, Long> A092 = this.A07.A09(this.A0B, this.A0A, i, -9223372036854775807L, Math.max(0L, (ag.A08() + ah.A01) - j));
                if (A092 == null) {
                    return null;
                }
                A042 = ((Integer) A092.first).intValue();
                j2 = ((Long) A092.second).longValue();
                if (ag.A01 == null || !ag.A01.A09.equals(obj)) {
                    j3 = this.A02;
                    this.A02 = j3 + 1;
                } else {
                    j3 = ag.A01.A02.A04.A03;
                }
            } else {
                j2 = 0;
            }
            return A06(A07(A042, j2, j3), j2, j2);
        }
        FC currentPeriodId = ah.A04;
        this.A07.A0A(currentPeriodId.A02, this.A0A);
        if (currentPeriodId.A02()) {
            int adGroupIndex = currentPeriodId.A00;
            int A012 = this.A0A.A01(adGroupIndex);
            if (A012 == -1) {
                return null;
            }
            int adCountInCurrentAdGroup = this.A0A.A03(adGroupIndex, currentPeriodId.A01);
            if (adCountInCurrentAdGroup >= A012) {
                return A02(currentPeriodId.A02, ah.A00, currentPeriodId.A03);
            }
            if (!this.A0A.A0E(adGroupIndex, adCountInCurrentAdGroup)) {
                return null;
            }
            return A01(currentPeriodId.A02, adGroupIndex, adCountInCurrentAdGroup, ah.A00, currentPeriodId.A03);
        }
        long j4 = ah.A02;
        if (A0C[6].charAt(23) != 'A') {
            throw new RuntimeException();
        }
        A0C[1] = "6G";
        if (j4 != Long.MIN_VALUE) {
            int A052 = this.A0A.A05(ah.A02);
            if (A052 == -1) {
                return A02(currentPeriodId.A02, ah.A02, currentPeriodId.A03);
            }
            int A022 = this.A0A.A02(A052);
            if (!this.A0A.A0E(A052, A022)) {
                return null;
            }
            return A01(currentPeriodId.A02, A052, A022, ah.A02, currentPeriodId.A03);
        }
        int A002 = this.A0A.A00();
        if (A002 == 0) {
            return null;
        }
        int i2 = A002 - 1;
        if (this.A0A.A09(i2) != Long.MIN_VALUE || this.A0A.A0D(i2)) {
            return null;
        }
        int adGroupCount = this.A0A.A02(i2);
        if (!this.A0A.A0E(i2, adGroupCount)) {
            return null;
        }
        return A01(currentPeriodId.A02, i2, adGroupCount, this.A0A.A07(), currentPeriodId.A03);
    }

    private AH A04(AH ah, FC fc) {
        long A072;
        long j = ah.A03;
        long endPositionUs = ah.A02;
        boolean A0B2 = A0B(fc, endPositionUs);
        boolean A0C2 = A0C(fc, A0B2);
        this.A07.A0A(fc.A02, this.A0A);
        if (fc.A02()) {
            A072 = this.A0A.A0A(fc.A00, fc.A01);
        } else if (A0C[2].charAt(30) != 'V') {
            throw new RuntimeException();
        } else {
            A0C[2] = "zTzAUiYM1BrQqeObFTyCKDEgqKKR2HVC";
            A072 = endPositionUs == Long.MIN_VALUE ? this.A0A.A07() : endPositionUs;
        }
        return new AH(fc, j, endPositionUs, ah.A00, A072, A0B2, A0C2);
    }

    private AH A05(AK ak) {
        return A06(ak.A04, ak.A01, ak.A02);
    }

    private AH A06(FC fc, long j, long j2) {
        this.A07.A0A(fc.A02, this.A0A);
        if (!fc.A02()) {
            return A02(fc.A02, j2, fc.A03);
        }
        if (!this.A0A.A0E(fc.A00, fc.A01)) {
            return null;
        }
        return A01(fc.A02, fc.A00, fc.A01, j, fc.A03);
    }

    private FC A07(int i, long j, long j2) {
        this.A07.A0A(i, this.A0A);
        int A052 = this.A0A.A05(j);
        if (A052 == -1) {
            return new FC(i, j2);
        }
        return new FC(i, A052, this.A0A.A02(A052), j2);
    }

    private boolean A09() {
        AG A0F = A0F();
        if (A0F == null) {
            return true;
        }
        while (true) {
            int A042 = this.A07.A04(A0F.A02.A04.A02, this.A0A, this.A0B, this.A01, this.A09);
            while (A0F.A01 != null && !A0F.A02.A06) {
                A0F = A0F.A01;
            }
            if (A042 == -1 || A0F.A01 == null || A0F.A01.A02.A04.A02 != A042) {
                boolean A0T = A0T(A0F);
                A0F.A02 = A04(A0F.A02, A0F.A02.A04);
            } else {
                A0F = A0F.A01;
            }
        }
        boolean A0T2 = A0T(A0F);
        A0F.A02 = A04(A0F.A02, A0F.A02.A04);
        if (!A0T2) {
            return true;
        }
        boolean A0Q = A0Q();
        if (A0C[7].length() != 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[3] = "GuDKwHudSgXHMcEdzJg";
        strArr[5] = "TrxgVcYEVqGsLQMDNrMk5TDxlvQhmk";
        if (!A0Q) {
            return true;
        }
        return false;
    }

    private boolean A0A(AG ag, AH ah) {
        AH ah2 = ag.A02;
        if (ah2.A03 == ah.A03 && ah2.A02 == ah.A02 && ah2.A04.equals(ah.A04)) {
            return true;
        }
        return false;
    }

    private boolean A0B(FC fc, long j) {
        boolean z;
        int A002 = this.A07.A0A(fc.A02, this.A0A).A00();
        if (A002 == 0) {
            return true;
        }
        int i = A002 - 1;
        boolean A022 = fc.A02();
        if (this.A0A.A09(i) == Long.MIN_VALUE) {
            int postrollAdCount = this.A0A.A01(i);
            if (postrollAdCount == -1) {
                return false;
            }
            if (A022 && fc.A00 == i && fc.A01 == postrollAdCount - 1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
            if (A022 || this.A0A.A02(i) != postrollAdCount) {
                return false;
            }
            return true;
        } else if (A022 || j != Long.MIN_VALUE) {
            return false;
        } else {
            return true;
        }
    }

    private boolean A0C(FC fc, boolean z) {
        if (this.A07.A0C(this.A07.A0A(fc.A02, this.A0A).A00, this.A0B).A08 || !this.A07.A0G(fc.A02, this.A0A, this.A0B, this.A01, this.A09) || !z) {
            return false;
        }
        return true;
    }

    public final AG A0D() {
        AG ag = this.A05;
        if (ag != null) {
            if (ag == this.A06) {
                this.A06 = ag.A01;
            }
            this.A05.A0E();
            this.A00--;
            if (this.A00 == 0) {
                this.A04 = null;
                this.A08 = this.A05.A09;
                this.A03 = this.A05.A02.A04.A03;
            }
            this.A05 = this.A05.A01;
        } else {
            AG ag2 = this.A04;
            this.A05 = ag2;
            this.A06 = ag2;
        }
        return this.A05;
    }

    public final AG A0E() {
        AG ag = this.A06;
        C0551Hx.A04((ag == null || ag.A01 == null) ? false : true);
        if (A0C[7].length() != 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "7koWfuH1ta1EVLUWQFGgmnLKJoN2uwxl";
        strArr[0] = "1LlHzPavDhI1SmiN1gPMgWkfsuEkohyV";
        this.A06 = this.A06.A01;
        return this.A06;
    }

    public final AG A0F() {
        return A0Q() ? this.A05 : this.A04;
    }

    public final AG A0G() {
        return this.A04;
    }

    public final AG A0H() {
        return this.A05;
    }

    public final AG A0I() {
        return this.A06;
    }

    @Nullable
    public final AH A0J(long j, AK ak) {
        AG ag = this.A04;
        if (ag == null) {
            return A05(ak);
        }
        return A03(ag, j);
    }

    public final AH A0K(AH ah, int i) {
        return A04(ah, ah.A04.A01(i));
    }

    public final AbstractC1039aW A0L(AY[] ayArr, H7 h7, HA ha, FE fe, Object obj, AH ah) {
        long A082;
        AG ag = this.A04;
        if (ag == null) {
            A082 = ah.A03;
        } else {
            A082 = ag.A08() + this.A04.A02.A01;
        }
        AG ag2 = new AG(ayArr, A082, h7, ha, fe, obj, ah);
        if (this.A04 != null) {
            C0551Hx.A04(A0Q());
            this.A04.A01 = ag2;
        }
        this.A08 = null;
        this.A04 = ag2;
        this.A00++;
        return ag2.A08;
    }

    public final FC A0M(int i, long j) {
        return A07(i, j, A00(i));
    }

    public final void A0N(long j) {
        AG ag = this.A04;
        if (ag != null) {
            ag.A0H(j);
        }
    }

    public final void A0O(AbstractC0373Af af) {
        this.A07 = af;
    }

    public final void A0P(boolean z) {
        Object obj;
        AG A0F = A0F();
        if (A0F != null) {
            if (z) {
                obj = A0F.A09;
            } else {
                obj = null;
            }
            this.A08 = obj;
            this.A03 = A0F.A02.A04.A03;
            A0F.A0E();
            A0T(A0F);
        } else if (!z) {
            this.A08 = null;
        }
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A00 = 0;
    }

    public final boolean A0Q() {
        return this.A05 != null;
    }

    public final boolean A0R() {
        AG ag = this.A04;
        if (ag == null || (!ag.A02.A05 && this.A04.A0I() && this.A04.A02.A01 != -9223372036854775807L && this.A00 < 100)) {
            return true;
        }
        return false;
    }

    public final boolean A0S(int i) {
        this.A01 = i;
        return A09();
    }

    public final boolean A0T(AG ag) {
        boolean z;
        if (ag != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        boolean z2 = false;
        this.A04 = ag;
        while (ag.A01 != null) {
            ag = ag.A01;
            if (ag == this.A06) {
                this.A06 = this.A05;
                z2 = true;
            }
            ag.A0E();
            this.A00--;
        }
        this.A04.A01 = null;
        return z2;
    }

    public final boolean A0U(AbstractC1039aW aWVar) {
        AG ag = this.A04;
        return ag != null && ag.A08 == aWVar;
    }

    public final boolean A0V(FC fc, long j) {
        int i = fc.A02;
        AG ag = null;
        for (AG A0F = A0F(); A0F != null; A0F = A0F.A01) {
            if (ag == null) {
                A0F.A02 = A0K(A0F.A02, i);
            } else {
                if (i != -1) {
                    Object obj = A0F.A09;
                    if (A0C[2].charAt(30) != 'V') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0C;
                    strArr[4] = "cRCq0i1JCmFgPvSHr0NI30IAvGtOkPUO";
                    strArr[0] = "aqPjT6JpLbsnsfh6iIpVbm4IivKwupA2";
                    if (obj.equals(this.A07.A0B(i, this.A0A, true).A03)) {
                        AH A032 = A03(ag, j);
                        if (A032 == null) {
                            return true ^ A0T(ag);
                        }
                        A0F.A02 = A0K(A0F.A02, i);
                        if (!A0A(A0F, A032)) {
                            return true ^ A0T(ag);
                        }
                    }
                }
                return true ^ A0T(ag);
            }
            if (A0F.A02.A06) {
                i = this.A07.A04(i, this.A0A, this.A0B, this.A01, this.A09);
            }
            ag = A0F;
        }
        return true;
    }

    public final boolean A0W(boolean z) {
        this.A09 = z;
        return A09();
    }
}
