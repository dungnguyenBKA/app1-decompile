package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;

/* renamed from: com.facebook.ads.redexgen.X.Zg  reason: case insensitive filesystem */
public final class C0990Zg implements DM {
    public static String[] A0C;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public CS A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public final CM A09;
    public final IM A0A;
    public final String A0B;

    static {
        A00();
    }

    public static void A00() {
        A0C = new String[]{"KDszHDzXfqF59CRVRWftd3HVsRnCigSQ", "mt1wJ32vNuSPyEC341LvOqJuOPF0PUkp", "WrM", "XaAyFYRGYfBBBZw7eK", "eDOzUgm8HT4q1AQmalgqs20fTFsFJUGd", "BoW68Cbgp4ULkXl8fLSwM62hHrGuEs23", "bWE7L7mx05VAedoWHIxzCG4hfzqVFa", "OpD2t2SPaq7VaFKSNzknI6aN9MYETC"};
    }

    public C0990Zg() {
        this(null);
    }

    public C0990Zg(String str) {
        this.A02 = 0;
        this.A0A = new IM(4);
        this.A0A.A00[0] = -1;
        this.A09 = new CM();
        this.A0B = str;
    }

    /* JADX INFO: Multiple debug info for r4v1 'i'  int: [D('i' int), D('found' boolean)] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0075  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A01(com.facebook.ads.redexgen.X.IM r11) {
        /*
        // Method dump skipped, instructions count: 141
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0990Zg.A01(com.facebook.ads.redexgen.X.IM):void");
    }

    private void A02(IM im) {
        int min = Math.min(im.A05(), this.A01 - this.A00);
        this.A05.ADR(im, min);
        this.A00 += min;
        int i = this.A00;
        int i2 = this.A01;
        if (i >= i2) {
            this.A05.ADS(this.A04, 1, i2, 0, null);
            this.A04 += this.A03;
            this.A00 = 0;
            String[] strArr = A0C;
            if (strArr[5].charAt(10) != strArr[0].charAt(10)) {
                String[] strArr2 = A0C;
                strArr2[1] = "ScjCWzDsMvlE6C4iVMEuFqkFuKCicUAb";
                strArr2[4] = "udpHDrUjrNQxaJr25pS4UodeWrrvfUFS";
                this.A02 = 0;
                return;
            }
            throw new RuntimeException();
        }
    }

    private void A03(IM im) {
        int min = Math.min(im.A05(), 4 - this.A00);
        im.A0d(this.A0A.A00, this.A00, min);
        this.A00 += min;
        if (this.A00 >= 4) {
            this.A0A.A0Z(0);
            if (!CM.A05(this.A0A.A09(), this.A09)) {
                this.A00 = 0;
                this.A02 = 1;
                return;
            }
            this.A01 = this.A09.A02;
            if (!this.A07) {
                this.A03 = (((long) this.A09.A04) * 1000000) / ((long) this.A09.A03);
                this.A05.A5P(Format.A07(this.A06, this.A09.A06, null, -1, 4096, this.A09.A01, this.A09.A03, null, null, 0, this.A0B));
                this.A07 = true;
            }
            this.A0A.A0Z(0);
            this.A05.ADR(this.A0A, 4);
            this.A02 = 2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A49(IM im) {
        while (im.A05() > 0) {
            int i = this.A02;
            if (i == 0) {
                A01(im);
            } else if (i != 1) {
                String[] strArr = A0C;
                if (strArr[1].charAt(29) != strArr[4].charAt(29)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0C;
                strArr2[1] = "DlgSkZ7kUmj97mVCMXW7YS18xBC70U7G";
                strArr2[4] = "tybkSaN9ICkxBJ48s31m7V5Ixzqz2U6M";
                if (i == 2) {
                    A02(im);
                }
            } else {
                A03(im);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        da.A06();
        this.A06 = da.A05();
        this.A05 = ci.AEM(da.A04(), 1);
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACI() {
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACJ(long j, boolean z) {
        this.A04 = j;
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ADV() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
    }
}
