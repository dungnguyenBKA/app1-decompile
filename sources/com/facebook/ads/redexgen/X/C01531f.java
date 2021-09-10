package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.1f  reason: invalid class name and case insensitive filesystem */
public final class C01531f {
    public static byte[] A0C;
    public static String[] A0D;
    public AbstractC01440w A00;
    public AnonymousClass16 A01;
    public AnonymousClass7D A02;
    public String A03;
    public String A04;
    public List<C01491b> A05;
    public List<C01501c> A06;
    public List<C01511d> A07;
    public List<C01491b> A08;
    public List<C01501c> A09;
    public List<C01511d> A0A;
    public boolean A0B;

    static {
        A06();
        A05();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0C = new byte[]{70, 97, 121, 110, 99, 102, 107, 47, 76, 110, 108, 103, 106, 71, 106, 99, Byte.MAX_VALUE, 106, 125, 47, 102, 124, 47, 123, 125, 118, 102, 97, 104, 47, 123, 96, 47, 108, 110, 108, 103, 106, 47, 110, 124, 124, 106, 123, 124, 98, 96, 98, 105, 100, 94, 108, 96, 111, 101, 96, 117, 110, 115, 120, 94, 103, 104, 109, 100, 114, 71, 69, 71, 76, 65, 123, 73, 69, 74, 64, 69, 80, 75, 86, 93, 123, 77, 73, 69, 67, 65, 87, 81, 83, 81, 90, 87, 109, 95, 83, 92, 86, 83, 70, 93, 64, 75, 109, 68, 91, 86, 87, 93, 65};
    }

    public static void A06() {
        A0D = new String[]{"sSa", "mi5m9ruhoFx", "", "s1wudweLxGs6i20t889bnIZHd8X0m2eo", "Fcx9vpMoDT8ZievIpIvDEirtE1Us4xir", "sWXb4LdtlKvePJz7J6b2Ft", "9VqadD5Zvd9D5BEd6Wk7rSckzIYQNWUp", "eNXwk482U"};
    }

    public C01531f(AbstractC01440w r3, AnonymousClass16 r4, String str, AnonymousClass7D r6) {
        this.A01 = r4;
        if (!A09()) {
            this.A0B = false;
            return;
        }
        this.A0B = true;
        JSONObject A0b = this.A01.A0b();
        this.A00 = r3;
        try {
            this.A06 = C01521e.A05(A0b);
            this.A07 = C01521e.A06(A0b);
            this.A05 = C01521e.A04(A0b);
            this.A09 = C01521e.A08(A0b);
            this.A0A = C01521e.A09(A0b);
            this.A08 = C01521e.A07(A0b);
        } catch (IllegalStateException unused) {
            this.A00.A9h();
        }
        this.A04 = r4.A0Y();
        this.A03 = str;
        this.A02 = r6;
    }

    private void A02() {
        Iterator<C01491b> it;
        Iterator<C01501c> it2 = this.A06.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            if (A0D[7].length() != 9) {
                throw new RuntimeException();
            }
            A0D[2] = "s43HwKDQ";
            if (hasNext) {
                C01501c next = it2.next();
                this.A02.A0T(new AnonymousClass7A(next.A02(), next.A00(), next.A01(), this.A04, this.A03));
            } else {
                for (C01511d r1 : this.A07) {
                    this.A02.A0Y(new AnonymousClass7C(r1.A01(), this.A04, this.A03, r1.A00()));
                }
                List<C01491b> list = this.A05;
                if (A0D[2].length() != 15) {
                    A0D[5] = "Ng223TSybiacEU1WWPLk2q";
                    it = list.iterator();
                } else {
                    A0D[7] = "18SymYfpU";
                    it = list.iterator();
                }
                while (true) {
                    boolean hasNext2 = it.hasNext();
                    if (A0D[7].length() != 9) {
                        throw new RuntimeException();
                    }
                    A0D[4] = "gi3GLNiIWCAwlyNF5UJWvDNlEZ56BupW";
                    if (hasNext2) {
                        C01491b next2 = it.next();
                        AnonymousClass7C cacheFileData = new AnonymousClass7C(next2.A01(), this.A04, this.A03);
                        cacheFileData.A04 = !next2.A00().equals(A01(0, 0, 60));
                        cacheFileData.A03 = next2.A00();
                        this.A02.A0V(cacheFileData);
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void A03() {
        for (C01501c r1 : this.A09) {
            this.A02.A0U(new AnonymousClass7A(r1.A02(), r1.A00(), r1.A01(), this.A04, this.A03));
        }
        List<C01511d> list = this.A0A;
        if (A0D[7].length() != 9) {
            throw new RuntimeException();
        }
        A0D[2] = "XaDaKpjcAfkqTK4VX";
        for (C01511d videoCacheData : list) {
            this.A02.A0X(new AnonymousClass7C(videoCacheData.A01(), this.A04, this.A03));
        }
        for (C01491b r5 : this.A08) {
            AnonymousClass7C r4 = new AnonymousClass7C(r5.A01(), this.A04, this.A03);
            r4.A04 = !r5.A00().equals(A01(0, 0, 60));
            r4.A03 = r5.A00();
            this.A02.A0W(r4);
        }
    }

    private void A04() {
        this.A02.A0S(new SA(this), new AnonymousClass76(this.A04, this.A03));
    }

    private boolean A07(String str) {
        AnonymousClass16 r0 = this.A01;
        if (r0 != null) {
            return r0.A0b().has(str);
        }
        return false;
    }

    public final void A08() {
        if (A09()) {
            A02();
            A03();
            A04();
            return;
        }
        throw new IllegalStateException(A01(0, 45, 50));
    }

    public final boolean A09() {
        AnonymousClass16 r0 = this.A01;
        if (r0 == null) {
            return this.A0B;
        }
        JSONObject A0b = r0.A0b();
        if (A0D[5].length() != 22) {
            throw new RuntimeException();
        }
        A0D[5] = "0MUxNIoi6mFZgBaSZOUpUP";
        if (this.A0B || (A0b != null && A07(A01(66, 22, 25)) && A07(A01(88, 22, 15)) && A07(A01(45, 21, 60)))) {
            return true;
        }
        return false;
    }
}
