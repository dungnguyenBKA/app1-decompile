package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ax  reason: case insensitive filesystem */
public final class C0391Ax extends TB {
    public static String[] A08;
    public float A00 = 50.0f;
    public int A01;
    public int A02 = 0;
    public BE A03;
    public int[] A04;
    public final XJ A05;
    public final C0713Om A06;
    public final C0714On A07;

    static {
        A04();
    }

    public static void A04() {
        A08 = new String[]{"bHvO3zM", "7z8VpEP", "iw2Y0c", "LME8njBPiXs011hhslbtp", "9K0lNzbR5X2b0vS5", "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh", "t6anbflpJj2CGicCnIMdWTRCydsD", "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"};
    }

    public C0391Ax(XJ xj, C0714On on, C0713Om om) {
        super(xj);
        this.A05 = xj;
        this.A07 = on;
        this.A06 = om;
        this.A01 = -1;
        this.A03 = new BE(this, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K
    public final void A1K(AnonymousClass4S r17, AnonymousClass4Z r18, int i, int i2) {
        int[] iArr;
        int A0X;
        int heightSize = View.MeasureSpec.getMode(i);
        int mode = View.MeasureSpec.getMode(i2);
        if ((heightSize == 1073741824 && A2B() == 1) || (mode == 1073741824 && A2B() == 0)) {
            super.A1K(r17, r18, i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.A06.A01(this.A01)) {
            iArr = this.A06.A02(this.A01);
        } else {
            iArr = new int[]{0, 0};
            if (r18.A03() >= 1) {
                if (A0X() > 0) {
                    A0X = 1;
                } else {
                    A0X = A0X();
                }
                for (int i3 = 0; i3 < A0X; i3++) {
                    View A1r = A1r(i3);
                    if (A08[5].length() != 32) {
                        throw new RuntimeException();
                    }
                    A08[4] = "FajaHWp";
                    if (A1r == null) {
                        break;
                    }
                    this.A04 = this.A07.A00(A1r, View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (A2B() == 0) {
                        int heightMode = iArr[0];
                        int[] iArr2 = this.A04;
                        iArr[0] = heightMode + iArr2[0];
                        if (i3 == 0) {
                            int A0h = iArr2[1] + A0h();
                            if (A08[6].length() != 1) {
                                A08[6] = "o1L5u";
                                iArr[1] = A0h + A0e();
                            } else {
                                throw new RuntimeException();
                            }
                        } else {
                            continue;
                        }
                    } else {
                        int i4 = iArr[1];
                        int[] iArr3 = this.A04;
                        if (A08[6].length() != 1) {
                            A08[5] = "6nCDHSOFLCCkeDdRDThHGlolS6KLs45E";
                            iArr[1] = i4 + iArr3[1];
                            if (i3 != 0) {
                            }
                        } else {
                            A08[3] = "KFvpvLkhCjqU9hzA1pvFB";
                            iArr[1] = i4 + iArr3[1];
                            if (i3 != 0) {
                            }
                        }
                        iArr[0] = iArr3[0] + A0f() + A0g();
                    }
                }
                int i5 = this.A01;
                if (i5 != -1) {
                    this.A06.A00(i5, iArr);
                }
            }
        }
        if (heightSize == 1073741824) {
            iArr[0] = size;
        }
        if (mode == 1073741824) {
            iArr[1] = size2;
        }
        A14(iArr[0], iArr[1]);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K, com.facebook.ads.redexgen.X.TB
    public final void A1u(int i) {
        A2G(i, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4K, com.facebook.ads.redexgen.X.TB
    public final void A22(C0469Eq eq, AnonymousClass4Z r3, int i) {
        this.A03.A0B(i);
        A1M(this.A03);
    }

    public final void A2L(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.A00 = (float) (50.0d / d);
        this.A03 = new BE(this, this.A05);
    }

    public final void A2M(int i) {
        this.A01 = i;
    }

    public final void A2N(int i) {
        this.A02 = i;
    }
}
