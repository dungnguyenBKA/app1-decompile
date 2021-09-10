package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import com.vungle.warren.error.VungleException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class ZL extends DC {
    public static byte[] A02;
    public static String[] A03;
    public ZK A00;
    public I9 A01;

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{6, 18, 3, 14, 8, 72, 1, 11, 6, 4};
    }

    public static void A04() {
        A03 = new String[]{"RjYCDLb2NANzCnedRKoQM0GQ", "QX5lqyT5r1TYXy6sq6A", "sDmzmZu2Epi", "QleORMZQxcHxPLUcnR0aaEPVJ", "tBrVRsKa63H7cOEQm0uGMqa5cwtrVWSW", "PEwzIbtLaNn1pzRcppb", "zVqUyH", "ZIYCsXe3luBjtUiXTHmKPLmA"};
    }

    private int A00(IM im) {
        int A0J;
        int i = (im.A00[2] & 255) >> 4;
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
            case 7:
                im.A0a(4);
                im.A0P();
                if (i == 6) {
                    A0J = im.A0F();
                } else {
                    A0J = im.A0J();
                }
                im.A0Z(0);
                return A0J + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            case 13:
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static boolean A05(IM im) {
        if (im.A05() >= 5 && im.A0F() == 127 && im.A0N() == 1179402563) {
            return true;
        }
        return false;
    }

    public static boolean A06(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final long A08(IM im) {
        if (!A06(im.A00)) {
            return -1;
        }
        int A002 = A00(im);
        String[] strArr = A03;
        if (strArr[2].length() != strArr[0].length()) {
            String[] strArr2 = A03;
            strArr2[2] = "M0DKrSciZtY";
            strArr2[0] = "bwyyvFLni8GVBC8P6VU38e20";
            return (long) A002;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final void A0A(boolean z) {
        super.A0A(z);
        if (z) {
            this.A01 = null;
            this.A00 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final boolean A0B(IM im, long j, DB db) throws IOException, InterruptedException {
        byte[] bArr = im.A00;
        if (this.A01 == null) {
            this.A01 = new I9(bArr, 17);
            byte[] data = Arrays.copyOfRange(bArr, 9, im.A08());
            data[4] = Byte.MIN_VALUE;
            List singletonList = Collections.singletonList(data);
            db.A00 = Format.A07(null, A02(0, 10, 95), null, -1, this.A01.A00(), this.A01.A01, this.A01.A06, singletonList, null, 0, null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.A00 = new ZK(this);
            this.A00.A02(im);
            return true;
        } else if (!A06(bArr)) {
            return true;
        } else {
            ZK zk = this.A00;
            if (zk != null) {
                zk.A01(j);
                db.A01 = this.A00;
            }
            return false;
        }
    }
}
