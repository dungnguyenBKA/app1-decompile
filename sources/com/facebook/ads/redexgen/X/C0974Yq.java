package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.extractor.Extractor;
import java.lang.reflect.Constructor;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Yq  reason: case insensitive filesystem */
public final class C0974Yq implements CJ {
    public static byte[] A06;
    public static final Constructor<? extends CG> A07;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05 = 1;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 75);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{4, 51, 51, 46, 51, 97, 40, 47, 50, 53, 32, 47, 53, 40, 32, 53, 40, 47, 38, 97, 7, 13, 0, 2, 97, 36, 57, 53, 36, 47, 50, 40, 46, 47, 37, 30, 21, 8, 0, 21, 19, 4, 21, 20, 80, 21, 2, 2, 31, 2, 80, 19, 2, 21, 17, 4, 25, 30, 23, 80, 54, 60, 49, 51, 80, 21, 8, 4, 2, 17, 19, 4, 31, 2, 98, 110, 108, 47, 103, 96, 98, 100, 99, 110, 110, 106, 47, 96, 101, 114, 47, 104, 111, 117, 100, 115, 111, 96, 109, 47, 100, 121, 110, 113, 109, 96, 120, 100, 115, 51, 47, 100, 121, 117, 47, 103, 109, 96, 98, 47, 71, 109, 96, 98, 68, 121, 117, 115, 96, 98, 117, 110, 115};
    }

    static {
        A01();
        Constructor<? extends Extractor> flacExtractorConstructor = null;
        try {
            flacExtractorConstructor = Class.forName(A00(74, 59, 74)).asSubclass(CG.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException unused) {
        } catch (Exception e) {
            throw new RuntimeException(A00(0, 34, 10), e);
        }
        A07 = flacExtractorConstructor;
    }

    @Override // com.facebook.ads.redexgen.X.CJ
    public final synchronized CG[] A4I() {
        CG[] cgArr;
        cgArr = new CG[(A07 == null ? 12 : 13)];
        cgArr[0] = new Z5(this.A01);
        cgArr[1] = new ZF(this.A00);
        cgArr[2] = new ZH(this.A03);
        cgArr[3] = new Z8(this.A02);
        cgArr[4] = new ZW();
        cgArr[5] = new ZT();
        cgArr[6] = new C0999Zp(this.A05, this.A04);
        cgArr[7] = new C0982Yy();
        cgArr[8] = new ZN();
        cgArr[9] = new C0993Zj();
        cgArr[10] = new C1001Zr();
        cgArr[11] = new C0979Yv();
        if (A07 != null) {
            try {
                cgArr[12] = (CG) A07.newInstance(new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException(A00(34, 40, 59), e);
            }
        }
        return cgArr;
    }
}
