package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Za  reason: case insensitive filesystem */
public final class C0984Za implements DM {
    public static byte[] A06;
    public static String[] A07;
    public int A00;
    public int A01;
    public long A02;
    public boolean A03;
    public final List<DX> A04;
    public final CS[] A05;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{117, 100, 100, 120, 125, 119, 117, 96, 125, 123, 122, 59, 112, 98, 118, 103, 97, 118, 103};
    }

    public static void A02() {
        A07 = new String[]{"Jiy", "2wEJIBTa4RvP8yrIwKSodHRjo9", "akcZBAKpF", "EuZb8kUx1OZ", "XeLxT4hCbfpB8vk3L3qpbFThh9kK", "oaj", "R8TqjunyKtvNfOkCV", "nGIequV"};
    }

    public C0984Za(List<DX> list) {
        this.A04 = list;
        this.A05 = new CS[list.size()];
    }

    private boolean A03(IM im, int i) {
        if (im.A05() == 0) {
            return false;
        }
        if (im.A0F() != i) {
            this.A03 = false;
        }
        this.A00--;
        return this.A03;
    }

    /* JADX INFO: Multiple debug info for r0v5 com.facebook.ads.redexgen.X.CS: [D('bytesAvailable' int), D('output' com.facebook.ads.redexgen.X.CS)] */
    @Override // com.facebook.ads.redexgen.X.DM
    public final void A49(IM im) {
        if (!this.A03) {
            return;
        }
        if (this.A00 != 2 || A03(im, 32)) {
            if (this.A00 != 1 || A03(im, 0)) {
                int A072 = im.A07();
                int A052 = im.A05();
                CS[] csArr = this.A05;
                for (CS output : csArr) {
                    im.A0Z(A072);
                    output.ADR(im, A052);
                }
                this.A01 += A052;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        int i = 0;
        while (true) {
            CS[] csArr = this.A05;
            String[] strArr = A07;
            if (strArr[7].length() != strArr[1].length()) {
                String[] strArr2 = A07;
                strArr2[6] = "6Yign7KSgGvnaQ3UG";
                strArr2[0] = "Q7U";
                if (i < csArr.length) {
                    DX dx = this.A04.get(i);
                    da.A06();
                    CS AEM = ci.AEM(da.A04(), 3);
                    AEM.A5P(Format.A0A(da.A05(), A00(0, 19, 88), null, -1, 0, Collections.singletonList(dx.A02), dx.A01, null));
                    this.A05[i] = AEM;
                    i++;
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACI() {
        if (this.A03) {
            for (CS cs : this.A05) {
                cs.ADS(this.A02, 1, this.A01, 0, null);
            }
            this.A03 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACJ(long j, boolean z) {
        if (z) {
            this.A03 = true;
            this.A02 = j;
            this.A01 = 0;
            this.A00 = 2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ADV() {
        this.A03 = false;
    }
}
