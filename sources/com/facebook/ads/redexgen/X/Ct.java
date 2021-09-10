package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;

public final class Ct {
    public static String[] A0A;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C0426Cn A04;
    public D2 A05;
    public final CS A06;
    public final D4 A07 = new D4();
    public final IM A08 = new IM();
    public final IM A09 = new IM(1);

    static {
        A02();
    }

    public static void A02() {
        A0A = new String[]{"3clh", "In2mDQuCVOg3ihkf16hWdIIfuM6sFv5F", "x02l2Vae1akitXdZsfkSin5rPssADgyF", "voDg", "hUzVtg6QDcg3AayaGyy4Y5hfj2RvIx7z", "AYA0HHhZRav1tOhmR967ChnIf", "RG8", "bQ6q4wCv1qa3psjbWrVNO9D1ADq5zdw2"};
    }

    public Ct(CS cs) {
        this.A06 = cs;
    }

    private D3 A00() {
        int i = this.A07.A07.A02;
        if (this.A07.A08 == null) {
            return this.A05.A00(i);
        }
        D4 d4 = this.A07;
        String[] strArr = A0A;
        if (strArr[1].charAt(10) != strArr[4].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[1] = "mhitCTNVD2gTcCiZ9jaRAXWaAA0g9dMw";
        strArr2[4] = "MwiogHOaq0gqmibDd9x4nD1rPGRVV4il";
        return d4.A08;
    }

    /* access modifiers changed from: private */
    public void A01() {
        if (this.A07.A0A) {
            IM im = this.A07.A09;
            D3 A002 = A00();
            if (A002.A00 != 0) {
                im.A0a(A002.A00);
            }
            if (this.A07.A0H[this.A01]) {
                im.A0a(im.A0J() * 6);
            }
        }
    }

    public final int A04() {
        IM im;
        int length;
        int vectorSize;
        if (!this.A07.A0A) {
            return 0;
        }
        D3 A002 = A00();
        if (A002.A00 != 0) {
            im = this.A07.A09;
            length = A002.A00;
        } else {
            byte[] bArr = A002.A04;
            String[] strArr = A0A;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[1] = "Pfb0S5CneQgYrjeMjOJgtR7T7eyOdr1R";
            strArr2[4] = "zLY8KEVp0MgNhcadjz3HGMWIKnjSbq4p";
            this.A08.A0c(bArr, bArr.length);
            im = this.A08;
            length = bArr.length;
        }
        boolean z = this.A07.A0H[this.A01];
        byte[] bArr2 = this.A09.A00;
        if (z) {
            vectorSize = 128;
        } else {
            vectorSize = 0;
        }
        bArr2[0] = (byte) (vectorSize | length);
        this.A09.A0Z(0);
        this.A06.ADR(this.A09, 1);
        this.A06.ADR(im, length);
        if (!z) {
            return length + 1;
        }
        IM im2 = this.A07.A09;
        int A0J = im2.A0J();
        im2.A0a(-2);
        int i = (A0J * 6) + 2;
        this.A06.ADR(im2, i);
        return length + 1 + i;
    }

    public final void A05() {
        this.A07.A02();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
    }

    public final void A06(long j) {
        long A012 = C03639u.A01(j);
        int i = this.A01;
        while (i < this.A07.A00 && this.A07.A01(i) < A012) {
            boolean[] zArr = this.A07.A0I;
            String[] strArr = A0A;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[1] = "yYyJ6pNJ0kgjmttu9OhrBT2GfQD0mn7b";
            strArr2[4] = "spdSEizAECgh3deYwyaUKu4kY7nul1tj";
            if (zArr[i]) {
                this.A03 = i;
            }
            i++;
        }
    }

    public final void A07(DrmInitData drmInitData) {
        String str;
        D3 A002 = this.A05.A00(this.A07.A07.A02);
        if (A002 != null) {
            str = A002.A02;
        } else {
            str = null;
        }
        this.A06.A5P(this.A05.A07.A0J(drmInitData.A03(str)));
    }

    public final void A08(D2 d2, C0426Cn cn2) {
        this.A05 = (D2) C0551Hx.A01(d2);
        this.A04 = (C0426Cn) C0551Hx.A01(cn2);
        this.A06.A5P(d2.A07);
        A05();
    }

    public final boolean A09() {
        this.A01++;
        this.A00++;
        int i = this.A00;
        int[] iArr = this.A07.A0E;
        int i2 = this.A02;
        if (i != iArr[i2]) {
            return true;
        }
        this.A02 = i2 + 1;
        String[] strArr = A0A;
        if (strArr[2].charAt(8) != strArr[7].charAt(8)) {
            throw new RuntimeException();
        }
        A0A[6] = "24SILmm";
        this.A00 = 0;
        return false;
    }
}
