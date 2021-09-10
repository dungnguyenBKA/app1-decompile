package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Zk  reason: case insensitive filesystem */
public final class C0994Zk implements AbstractC0434Db {
    public static String[] A06;
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final DU A04;
    public final IM A05 = new IM(32);

    static {
        A00();
    }

    public static void A00() {
        A06 = new String[]{"kFQyFzcAtW9h", "T9w", "fQaNjl3SJX3d9bVQ", "oZJ95vdSt2TTHBWCj0JXn5a7ndpZ8Bju", "u9yp8kydrxa7", "6VdIrZzllDHdfU7GHzHok5zrzcn9yZKG", "C5", "TRfT7Vv0"};
    }

    public C0994Zk(DU du) {
        this.A04 = du;
    }

    /* JADX INFO: Multiple debug info for r8v0 com.facebook.ads.redexgen.X.IM: [D('tableId' int), D('bodyBytesToRead' int), D('headerBytesToRead' int), D('payloadStartOffset' int)] */
    /* JADX INFO: Multiple debug info for r5v4 byte[]: [D('bytes' byte[]), D('secondHeaderByte' int)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC0434Db
    public final void A4A(IM im, boolean z) {
        int i = -1;
        if (z) {
            i = im.A07() + im.A0F();
        }
        boolean z2 = this.A03;
        if (A06[1].length() != 27) {
            A06[7] = "Nc9T8xtu";
            if (z2) {
                if (z) {
                    this.A03 = false;
                    im.A0Z(i);
                    this.A00 = 0;
                } else {
                    return;
                }
            }
            while (im.A05() > 0) {
                int i2 = this.A00;
                boolean z3 = true;
                if (i2 < 3) {
                    if (i2 == 0) {
                        int A0F = im.A0F();
                        im.A0Z(im.A07() - 1);
                        if (A06[7].length() != 8) {
                            throw new RuntimeException();
                        }
                        A06[2] = "aJNwIS78aN3JetqFlJ8G";
                        if (A0F == 255) {
                            this.A03 = true;
                            return;
                        }
                    }
                    int min = Math.min(im.A05(), 3 - this.A00);
                    im.A0d(this.A05.A00, this.A00, min);
                    this.A00 += min;
                    if (this.A00 == 3) {
                        this.A05.A0X(3);
                        this.A05.A0a(1);
                        int A0F2 = this.A05.A0F();
                        int A0F3 = this.A05.A0F();
                        if ((A0F2 & 128) == 0) {
                            z3 = false;
                        }
                        this.A02 = z3;
                        this.A01 = (((A0F2 & 15) << 8) | A0F3) + 3;
                        if (this.A05.A06() < this.A01) {
                            byte[] bytes = this.A05.A00;
                            this.A05.A0X(Math.min(4098, Math.max(this.A01, bytes.length * 2)));
                            System.arraycopy(bytes, 0, this.A05.A00, 0, 3);
                        }
                    }
                } else {
                    int min2 = Math.min(im.A05(), this.A01 - this.A00);
                    im.A0d(this.A05.A00, this.A00, min2);
                    this.A00 += min2;
                    int i3 = this.A00;
                    int i4 = this.A01;
                    if (i3 == i4) {
                        boolean z4 = this.A02;
                        if (A06[7].length() != 8) {
                            throw new RuntimeException();
                        }
                        A06[1] = "WscUDiyP9zB";
                        if (!z4) {
                            this.A05.A0X(i4);
                        } else if (C0556Ic.A09(this.A05.A00, 0, this.A01, -1) != 0) {
                            this.A03 = true;
                            return;
                        } else {
                            IM im2 = this.A05;
                            int thirdHeaderByte = this.A01 - 4;
                            if (A06[2].length() != 29) {
                                String[] strArr = A06;
                                strArr[3] = "nNiCCranccCPI0NRpeExr6ylwZyZykwG";
                                strArr[5] = "pfAdcnCCuWORkUPhfNuwqkYYK2fT2IOL";
                                im2.A0X(thirdHeaderByte);
                            } else {
                                A06[2] = "0kjAgxStX";
                                im2.A0X(thirdHeaderByte);
                            }
                        }
                        this.A04.A49(this.A05);
                        this.A00 = 0;
                    } else {
                        continue;
                    }
                }
            }
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0434Db
    public final void A7s(IY iy, CI ci, C0433Da da) {
        this.A04.A7s(iy, ci, da);
        this.A03 = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0434Db
    public final void ADV() {
        this.A03 = true;
    }
}
