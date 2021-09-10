package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public final class ZQ extends DC {
    public static byte[] A05;
    public static String[] A06;
    public int A00;
    public DE A01;
    public DG A02;
    public DI A03;
    public boolean A04;

    static {
        A05();
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{61, 41, 56, 53, 51, 115, 42, 51, 46, 62, 53, 47};
    }

    public static void A05() {
        A06 = new String[]{"Wz5kpI", "Qu4rCXWHGrZxyCLJ91nJYm9HwbbNBaAB", "jcFxTUNQ9mBSPSNjMUJY07wGvzfGS2C0", "wRecpgZSCUfboq2e81nqZjs5B", "2wu5mHiieWPMNFHGOEN0thCm6IWO9Xya", "P54DBngSoaRE6HRNMaW6H3WNUnBy8S0x", "u1kez8Hi5IXqm6uzKKQ3Ad3inAYpSzVQ", "yOq9tmgmQLY5WHe8QvjpkSndY9PHYfSY"};
    }

    public static int A00(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static int A01(byte b, DE de) {
        if (!de.A04[A00(b, de.A00, 1)].A03) {
            return de.A02.A03;
        }
        return de.A02.A04;
    }

    private final DE A02(IM im) throws IOException {
        if (this.A03 == null) {
            this.A03 = DJ.A04(im);
            return null;
        }
        DG dg = this.A02;
        if (A06[7].charAt(1) != 'O') {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[3] = "EnVW7ymY5FyvrkHYKpVAYit2P";
        strArr[0] = "59lsEN";
        if (dg == null) {
            this.A02 = DJ.A03(im);
            return null;
        }
        byte[] bArr = new byte[im.A08()];
        System.arraycopy(im.A00, 0, bArr, 0, im.A08());
        DH[] A0D = DJ.A0D(im, this.A03.A05);
        return new DE(this.A03, this.A02, bArr, A0D, DJ.A00(A0D.length - 1));
    }

    public static void A06(IM im, long j) {
        im.A0Y(im.A08() + 4);
        im.A00[im.A08() - 4] = (byte) ((int) (j & 255));
        im.A00[im.A08() - 3] = (byte) ((int) ((j >>> 8) & 255));
        im.A00[im.A08() - 2] = (byte) ((int) ((j >>> 16) & 255));
        im.A00[im.A08() - 1] = (byte) ((int) (255 & (j >>> 24)));
    }

    public static boolean A07(IM im) {
        try {
            return DJ.A0B(1, im, true);
        } catch (AJ unused) {
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final long A08(IM im) {
        int i = 0;
        if ((im.A00[0] & 1) == 1) {
            return -1;
        }
        int A012 = A01(im.A00[0], this.A01);
        if (this.A04) {
            i = (this.A00 + A012) / 4;
        }
        A06(im, (long) i);
        this.A04 = true;
        this.A00 = A012;
        return (long) i;
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final void A09(long j) {
        boolean z;
        super.A09(j);
        int i = 0;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        this.A04 = z;
        DI di = this.A03;
        if (di != null) {
            i = di.A03;
        }
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final void A0A(boolean z) {
        super.A0A(z);
        if (z) {
            this.A01 = null;
            this.A03 = null;
            this.A02 = null;
        }
        this.A00 = 0;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final boolean A0B(IM im, long j, DB db) throws IOException, InterruptedException {
        if (this.A01 != null) {
            String[] strArr = A06;
            if (strArr[5].charAt(2) != strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            A06[2] = "mO0nJ77ourwQSXFSw31DnFJId1Q3DZ07";
            return false;
        }
        this.A01 = A02(im);
        if (this.A01 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.A01.A02.A09);
        arrayList.add(this.A01.A03);
        db.A00 = Format.A07(null, A03(0, 12, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), null, this.A01.A02.A02, -1, this.A01.A02.A05, (int) this.A01.A02.A06, arrayList, null, 0, null);
        return true;
    }
}
