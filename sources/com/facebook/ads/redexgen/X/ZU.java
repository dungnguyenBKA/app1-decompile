package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;

public final class ZU implements DM {
    public static String[] A0C;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public Format A05;
    public CS A06;
    public String A07;
    public boolean A08;
    public final IL A09;
    public final IM A0A;
    public final String A0B;

    static {
        A01();
    }

    public static void A01() {
        A0C = new String[]{"nJiMpwDCR7ZAmhQyp9AOHiC56UVcRx0k", "lCnqxh0y89Em7p481QheNATB6nErTPja", "EOgZonHCFyaPw1rQOdlgFposS9KMweND", "oVFhsCJtzutno5RzvIOwcHRYGNjJYB0M", "4", "S", "C7ZxqwSPJTae6vgKBRSPBAMVUD", "Gg5xSTo0LtnMpcaC7QBiBySoh1"};
    }

    public ZU() {
        this(null);
    }

    public ZU(String str) {
        this.A09 = new IL(new byte[128]);
        this.A0A = new IM(this.A09.A00);
        this.A02 = 0;
        this.A0B = str;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        if (r1.A05 == r13.A05.A0O) goto L_0x0064;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A00() {
        /*
        // Method dump skipped, instructions count: 120
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZU.A00():void");
    }

    private boolean A02(IM im) {
        while (true) {
            boolean z = false;
            if (im.A05() <= 0) {
                return false;
            }
            if (!this.A08) {
                if (im.A0F() == 11) {
                    z = true;
                }
                this.A08 = z;
            } else {
                int A0F = im.A0F();
                if (A0F == 119) {
                    this.A08 = false;
                    return true;
                }
                if (A0F == 11) {
                    z = true;
                }
                this.A08 = z;
            }
        }
    }

    private boolean A03(IM im, byte[] bArr, int i) {
        int min = Math.min(im.A05(), i - this.A00);
        im.A0d(bArr, this.A00, min);
        this.A00 += min;
        return this.A00 == i;
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A49(IM im) {
        while (im.A05() > 0) {
            int i = this.A02;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(im.A05(), this.A01 - this.A00);
                        this.A06.ADR(im, min);
                        this.A00 += min;
                        int i2 = this.A00;
                        int i3 = this.A01;
                        if (i2 == i3) {
                            this.A06.ADS(this.A04, 1, i3, 0, null);
                            this.A04 += this.A03;
                            this.A02 = 0;
                        }
                    }
                } else if (A03(im, this.A0A.A00, 128)) {
                    A00();
                    this.A0A.A0Z(0);
                    this.A06.ADR(this.A0A, 128);
                    this.A02 = 2;
                }
            } else if (A02(im)) {
                this.A02 = 1;
                this.A0A.A00[0] = 11;
                this.A0A.A00[1] = 119;
                this.A00 = 2;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        da.A06();
        this.A07 = da.A05();
        this.A06 = ci.AEM(da.A04(), 1);
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
