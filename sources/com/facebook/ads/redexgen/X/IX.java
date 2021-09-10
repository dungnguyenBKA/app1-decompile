package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public final class IX {
    public static String[] A07;
    public static final Comparator<IW> A08 = new IU();
    public static final Comparator<IW> A09 = new IV();
    public int A00 = -1;
    public int A01;
    public int A02;
    public int A03;
    public final int A04;
    public final ArrayList<IW> A05 = new ArrayList<>();
    public final IW[] A06 = new IW[5];

    public static void A02() {
        A07 = new String[]{"v8bLZp59B3s5kjImuBjcCmNW", "l5XLQfXbQh6R34DBcL2a2gRDiWiOWq7j", "cKC0Gfnr6KNVk9zoAEVguSpqajRxhGsy", "4MzGZFDG0CqgMdioIrH5vwyzFGAbThRu", "MvXRt7wPeDxEfDCDFesb3zWoJZhNCkxf", "mCnVL7G0HMRU3KziMebPW175T1XCPvkW", "oyPZ3wFE5cpoHVmJFEQQrP2WxUjSMaR1", "eOuchRPwSpgwlWmZThUBhEapR1FbTYXS"};
    }

    static {
        A02();
    }

    public IX(int i) {
        this.A04 = i;
    }

    private void A00() {
        if (this.A00 != 1) {
            Collections.sort(this.A05, A08);
            this.A00 = 1;
        }
    }

    private void A01() {
        if (this.A00 != 0) {
            Collections.sort(this.A05, A09);
            this.A00 = 0;
        }
    }

    public final float A03(float f) {
        A01();
        float f2 = ((float) this.A03) * f;
        int i = 0;
        int i2 = 0;
        while (true) {
            ArrayList<IW> arrayList = this.A05;
            if (A07[7].charAt(12) != 'l') {
                throw new RuntimeException();
            }
            A07[1] = "MYxxtSQw2w0IEM5GsYZTgS2IPhbXFMQD";
            if (i2 < arrayList.size()) {
                IW iw = this.A05.get(i2);
                i += iw.A02;
                if (((float) i) >= f2) {
                    return iw.A00;
                }
                i2++;
            } else if (this.A05.isEmpty()) {
                return Float.NaN;
            } else {
                ArrayList<IW> arrayList2 = this.A05;
                return arrayList2.get(arrayList2.size() - 1).A00;
            }
        }
    }

    public final void A04(int i, float f) {
        IW iw;
        A00();
        int i2 = this.A02;
        if (i2 > 0) {
            IW[] iwArr = this.A06;
            int i3 = i2 - 1;
            this.A02 = i3;
            iw = iwArr[i3];
        } else {
            iw = new IW(null);
        }
        int i4 = this.A01;
        this.A01 = i4 + 1;
        iw.A01 = i4;
        if (A07[6].charAt(29) != 'a') {
            throw new RuntimeException();
        }
        A07[0] = "5E26ZSMWQoSDuNI0YD8YDk9y";
        iw.A02 = i;
        iw.A00 = f;
        this.A05.add(iw);
        this.A03 += i;
        while (true) {
            int i5 = this.A03;
            int i6 = this.A04;
            if (i5 > i6) {
                int i7 = i5 - i6;
                IW iw2 = this.A05.get(0);
                if (iw2.A02 <= i7) {
                    this.A03 -= iw2.A02;
                    this.A05.remove(0);
                    int i8 = this.A02;
                    if (i8 < 5) {
                        IW[] iwArr2 = this.A06;
                        if (A07[6].charAt(29) != 'a') {
                            this.A02 = i8 + 1;
                            iwArr2[i8] = iw2;
                        } else {
                            A07[0] = "NjEm8Wq6Ir4EIF9DQvkt7JHV";
                            this.A02 = i8 + 1;
                            iwArr2[i8] = iw2;
                        }
                    }
                } else {
                    iw2.A02 -= i7;
                    this.A03 -= i7;
                }
            } else {
                return;
            }
        }
    }
}
