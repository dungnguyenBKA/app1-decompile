package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Zp  reason: case insensitive filesystem */
public final class C0999Zp implements CG {
    public static byte[] A0C;
    public static String[] A0D;
    public static final CJ A0E = new C0996Zm();
    public static final long A0F = ((long) C0556Ic.A08(A0D(0, 4, 26)));
    public static final long A0G = ((long) C0556Ic.A08(A0D(62, 4, 14)));
    public static final long A0H = ((long) C0556Ic.A08(A0D(66, 4, 48)));
    public int A00;
    public int A01;
    public CI A02;
    public AbstractC0434Db A03;
    public boolean A04;
    public final int A05;
    public final SparseArray<AbstractC0434Db> A06;
    public final SparseBooleanArray A07;
    public final SparseIntArray A08;
    public final DZ A09;
    public final IM A0A;
    public final List<IY> A0B;

    public static String A0D(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 75);
        }
        return new String(copyOfRange);
    }

    public static void A0G() {
        A0C = new byte[]{-90, -88, -110, -104, -12, 18, 31, 31, 32, 37, -47, 23, 26, 31, 21, -47, 36, 42, 31, 20, -47, 19, 42, 37, 22, -33, -47, -2, 32, 36, 37, -47, 29, 26, 28, 22, 29, 42, -47, 31, 32, 37, -47, 18, -47, 5, 35, 18, 31, 36, 33, 32, 35, 37, -47, 4, 37, 35, 22, 18, 30, -33, -98, -102, -100, -116, -61, -64, -47, -66};
    }

    public static void A0H() {
        A0D = new String[]{"1wQJeguTcmzEzlcqQISF6uciTtBYCHEI", "1z5HoD8RnfRsH4NGqOJrgtDb3AvWKmRf", "OZb5z3fyn7DmUcX5PD2FSiUNDYO3SJGv", "xysXnf11fptxvGLEVlqKxNXP96VBbPb9", "B9gj7Y4phCIGiISa5KNqUW4wq7x20Uai", "0XWjmjuElj7dnGBGcTqheWJCaJtkSIxV", "xem2h", "3rpnxRNe64JCaC2IexlmS1y9p5GeiPOv"};
    }

    static {
        A0H();
        A0G();
    }

    public C0999Zp() {
        this(0);
    }

    public C0999Zp(int i) {
        this(1, i);
    }

    public C0999Zp(int i, int i2) {
        this(i, new IY(0), new ZY(i2));
    }

    public C0999Zp(int i, IY iy, DZ dz) {
        this.A09 = (DZ) C0551Hx.A01(dz);
        this.A05 = i;
        if (i == 1 || i == 2) {
            this.A0B = Collections.singletonList(iy);
        } else {
            this.A0B = new ArrayList();
            this.A0B.add(iy);
        }
        this.A0A = new IM(new byte[9400], 0);
        this.A07 = new SparseBooleanArray();
        this.A06 = new SparseArray<>();
        this.A08 = new SparseIntArray();
        A0F();
    }

    public static /* synthetic */ int A01(C0999Zp zp) {
        int i = zp.A01;
        zp.A01 = i + 1;
        return i;
    }

    private void A0F() {
        this.A07.clear();
        this.A06.clear();
        SparseArray<AbstractC0434Db> A4K = this.A09.A4K();
        int size = A4K.size();
        for (int i = 0; i < size; i++) {
            this.A06.put(A4K.keyAt(i), A4K.valueAt(i));
        }
        this.A06.put(0, new C0994Zk(new C0997Zn(this)));
        this.A03 = null;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A02 = ci;
        ci.ADX(new C0977Yt(-9223372036854775807L));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x010d, code lost:
        if (r8 == r9) goto L_0x010f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x011b, code lost:
        if (r8 == r9) goto L_0x010f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x011e, code lost:
        r8 = (r8 + 1) & 15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x012e, code lost:
        if (com.facebook.ads.redexgen.X.C0999Zp.A0D[1].charAt(3) == 72) goto L_0x0136;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0135, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0136, code lost:
        com.facebook.ads.redexgen.X.C0999Zp.A0D[3] = "dSZ0cSzoMmmORQANAKDw4NsHeD3mI6Jb";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x013d, code lost:
        if (r9 == r8) goto L_0x0142;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x013f, code lost:
        r3.ADV();
     */
    @Override // com.facebook.ads.redexgen.X.CG
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int ACk(com.facebook.ads.redexgen.X.CH r14, com.facebook.ads.redexgen.X.CN r15) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 357
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0999Zp.ACk(com.facebook.ads.redexgen.X.CH, com.facebook.ads.redexgen.X.CN):int");
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        int size = this.A0B.size();
        for (int i = 0; i < size; i++) {
            this.A0B.get(i).A09();
        }
        this.A0A.A0W();
        this.A08.clear();
        A0F();
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        byte[] bArr = this.A0A.A00;
        ch.ACM(bArr, 0, 940);
        int i = 0;
        while (A0D[1].charAt(3) == 'H') {
            A0D[1] = "vUfHgSsJvwNFwwToyev4j8iiTP0xmLzC";
            if (i >= 188) {
                return false;
            }
            for (int i2 = 0; i2 != 5; i2++) {
                if (bArr[(i2 * 188) + i] != 71) {
                    i++;
                }
            }
            ch.AE3(i);
            return true;
        }
        throw new RuntimeException();
    }
}
