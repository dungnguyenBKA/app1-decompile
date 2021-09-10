package com.facebook.ads.redexgen.X;

import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.internal.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.facebook.ads.redexgen.X.aX  reason: case insensitive filesystem */
public final class C1040aX implements CS {
    public static String[] A0F;
    public long A00;
    public long A01;
    public Format A02;
    public Format A03;
    public FX A04 = new FX(0, this.A0A);
    public FX A05;
    public FX A06;
    public FY A07;
    public boolean A08;
    public boolean A09;
    public final int A0A;
    public final FV A0B = new FV();
    public final FW A0C = new FW();
    public final HA A0D;
    public final IM A0E = new IM(32);

    static {
        A02();
    }

    public static void A02() {
        A0F = new String[]{"I0oQBEUbvXwmLkE4WWtRMgz", "xnniIxRr7DxSpuMWabRYn3WDpy4qBN9b", "Y7uRaXgz80uNyvcPATB9r3b0PwOkuM1V", "hSCUvOutOZqOqVGgCzlnUKxaNOAoeOWK", "Xz3O4WRIuCzLKbQHyaIDpuywePn7", "cSGy8Fn9cMgpPa", "oA7ibzMCvoxqvUcH1m6Eely4XW9nrCN1", "6CG0cGfKidBjxaDlKmMoUzgrmHvkLCHY"};
    }

    public C1040aX(HA ha) {
        this.A0D = ha;
        this.A0A = ha.A6d();
        FX fx = this.A04;
        this.A05 = fx;
        this.A06 = fx;
    }

    private int A00(int i) {
        if (!this.A06.A02) {
            this.A06.A02(this.A0D.A3O(), new FX(this.A06.A03, this.A0A));
        }
        return Math.min(i, (int) (this.A06.A03 - this.A01));
    }

    public static Format A01(Format format, long j) {
        if (format == null) {
            return null;
        }
        if (j == 0 || format.A0G == Long.MAX_VALUE) {
            return format;
        }
        return format.A0I(format.A0G + j);
    }

    private void A03(int i) {
        this.A01 += (long) i;
        if (this.A01 == this.A06.A03) {
            this.A06 = this.A06.A00;
        }
    }

    private void A04(long j) {
        while (j >= this.A05.A03) {
            this.A05 = this.A05.A00;
        }
    }

    private void A05(long j) {
        if (j != -1) {
            while (j >= this.A04.A03) {
                HA ha = this.A0D;
                H9 h9 = this.A04.A01;
                if (A0F[7].charAt(20) != 'U') {
                    throw new RuntimeException();
                }
                String[] strArr = A0F;
                strArr[3] = "uyKFH8oWQ0ou8mdxvkWufQ8fbIwtl6Z0";
                strArr[1] = "5GODjm0a5UxNqoFNrNo0AvXndV19DDx4";
                ha.AD0(h9);
                this.A04 = this.A04.A01();
            }
            if (this.A05.A04 < this.A04.A04) {
                this.A05 = this.A04;
            }
        }
    }

    private void A06(long j, ByteBuffer byteBuffer, int i) {
        A04(j);
        while (i > 0) {
            int min = Math.min(i, (int) (this.A05.A03 - j));
            byteBuffer.put(this.A05.A01.A01, this.A05.A00(j), min);
            i -= min;
            j += (long) min;
            if (j == this.A05.A03) {
                this.A05 = this.A05.A00;
            }
        }
    }

    private void A07(long j, byte[] bArr, int i) {
        A04(j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.A05.A03 - j));
            System.arraycopy(this.A05.A01.A01, this.A05.A00(j), bArr, i - i2, min);
            i2 -= min;
            j += (long) min;
            if (j == this.A05.A03) {
                this.A05 = this.A05.A00;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x00ae, code lost:
        if (r10 < r11) goto L_0x00b0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A08(com.facebook.ads.redexgen.X.YY r20, com.facebook.ads.redexgen.X.FV r21) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1040aX.A08(com.facebook.ads.redexgen.X.YY, com.facebook.ads.redexgen.X.FV):void");
    }

    private void A09(FX fx) {
        if (fx.A02) {
            H9[] h9Arr = new H9[((this.A06.A02 ? 1 : 0) + (((int) (this.A06.A04 - fx.A04)) / this.A0A))];
            for (int i = 0; i < h9Arr.length; i++) {
                h9Arr[i] = fx.A01;
                fx = fx.A01();
            }
            this.A0D.AD1(h9Arr);
        }
    }

    private final void A0A(boolean z) {
        this.A0C.A0I(z);
        A09(this.A04);
        this.A04 = new FX(0, this.A0A);
        FX fx = this.A04;
        this.A05 = fx;
        this.A06 = fx;
        this.A01 = 0;
        this.A0D.AEN();
    }

    public final int A0B() {
        return this.A0C.A08();
    }

    public final int A0C() {
        return this.A0C.A06();
    }

    public final int A0D() {
        return this.A0C.A07();
    }

    public final int A0E(long j, boolean z, boolean z2) {
        return this.A0C.A09(j, z, z2);
    }

    public final int A0F(AD ad, YY yy, boolean z, boolean z2, long j) {
        int A0A2 = this.A0C.A0A(ad, yy, z, z2, this.A02, this.A0B);
        if (A0A2 == -5) {
            this.A02 = ad.A00;
            return -5;
        } else if (A0A2 == -4) {
            if (!yy.A04()) {
                long j2 = yy.A00;
                if (A0F[7].charAt(20) != 'U') {
                    throw new RuntimeException();
                }
                A0F[2] = "VD6eroQucXdNz3MsoKHIT4kATW1JDfRN";
                if (j2 < j) {
                    yy.A00(RecyclerView.UNDEFINED_DURATION);
                }
                if (yy.A0A()) {
                    A08(yy, this.A0B);
                }
                yy.A09(this.A0B.A00);
                A06(this.A0B.A01, yy.A01, this.A0B.A00);
            }
            return -4;
        } else if (A0A2 == -3) {
            return -3;
        } else {
            throw new IllegalStateException();
        }
    }

    public final long A0G() {
        return this.A0C.A0C();
    }

    public final Format A0H() {
        return this.A0C.A0F();
    }

    public final void A0I() {
        A05(this.A0C.A0B());
    }

    public final void A0J() {
        A0A(false);
    }

    public final void A0K() {
        this.A0C.A0G();
        this.A05 = this.A04;
    }

    public final void A0L(long j, boolean z, boolean z2) {
        A05(this.A0C.A0E(j, z, z2));
    }

    public final void A0M(FY fy) {
        this.A07 = fy;
    }

    public final boolean A0N() {
        return this.A0C.A0J();
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final void A5P(Format format) {
        Format A012 = A01(format, this.A00);
        boolean A0L = this.A0C.A0L(A012);
        this.A03 = format;
        this.A08 = false;
        FY fy = this.A07;
        if (fy != null && A0L) {
            fy.ABv(A012);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final int ADQ(CH ch, int i, boolean z) throws IOException, InterruptedException {
        int read = ch.read(this.A06.A01.A01, this.A06.A00(this.A01), A00(i));
        if (read != -1) {
            A03(read);
            if (A0F[4].length() != 13) {
                String[] strArr = A0F;
                strArr[0] = "gj56WjutkODHGuBsULoCjgk";
                strArr[5] = "cXoHIYif5j6YkS";
                return read;
            }
            throw new RuntimeException();
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final void ADR(IM im, int i) {
        while (i > 0) {
            int A002 = A00(i);
            im.A0d(this.A06.A01.A01, this.A06.A00(this.A01), A002);
            i -= A002;
            A03(A002);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final void ADS(long j, int i, int i2, int i3, CR cr) {
        if (this.A08) {
            A5P(this.A03);
        }
        if (this.A09) {
            if ((i & 1) != 0) {
                FW fw = this.A0C;
                if (A0F[4].length() != 13) {
                    String[] strArr = A0F;
                    strArr[3] = "x9Xeu0fQ5laTPGHIgNPQILpO6czCAzIw";
                    strArr[1] = "ozcoxAULLkb5oe9KcRf5sNeK93qRoKsz";
                    if (fw.A0K(j)) {
                        String[] strArr2 = A0F;
                        if (strArr2[0].length() != strArr2[5].length()) {
                            A0F[7] = "2aF6Rrv8pvM6dW2iEnwFUFag8sTvrLLb";
                            this.A09 = false;
                        } else {
                            throw new RuntimeException();
                        }
                    } else {
                        return;
                    }
                } else {
                    throw new RuntimeException();
                }
            } else {
                return;
            }
        }
        this.A0C.A0H(j + this.A00, i, (this.A01 - ((long) i2)) - ((long) i3), i2, cr);
    }
}
