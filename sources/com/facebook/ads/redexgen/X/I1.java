package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

public final class I1 {
    public static byte[] A00;
    public static String[] A01;
    public static final byte[] A02 = {0, 0, 0, 1};
    public static final int[] A03 = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};
    public static final int[] A04 = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{5, 62, 35, 37, 32, 32, 63, 34, 36, 53, 52, 112, 49, 37, 52, 57, 63, 112, 63, 50, 58, 53, 51, 36, 112, 36, 41, 32, 53, 106, 112, 116, 79, 82, 84, 81, 81, 78, 83, 85, 68, 69, 1, 68, 81, 98, 78, 79, 71, 72, 70, 27, 1};
    }

    public static void A06() {
        A01 = new String[]{"7xLJJJjcPic97znxr7jYyKVhMaeA1j2E", "qlBokwmGez00tGn8Zoa7EPfSBX4wK2nd", "lNuywCj9LEYUa8avgu1fHofmnBtqXXwP", "QFj1OU4oR8zs4ROIl6ex9DnIWth", "MldRCxmPSCf85WqtCY5KHjt0bBRgqPbR", "RjpHJdGRFnKrV", "xTxTizoIhxSZQJal7HagUNUTtmhMrgov", "oiVBLQsg82rzAXMmQswhUJYEb9MEhzaa"};
    }

    static {
        A06();
        A05();
    }

    public static int A00(IL il) {
        int A05 = il.A05(5);
        if (A05 == 31) {
            return il.A05(6) + 32;
        }
        return A05;
    }

    public static int A01(IL il) {
        boolean z;
        int A05 = il.A05(4);
        if (A05 == 15) {
            return il.A05(24);
        }
        if (A01[3].length() != 27) {
            throw new RuntimeException();
        }
        A01[5] = "Rl706moC1hxTN";
        if (A05 < 13) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        return A04[A05];
    }

    /* JADX INFO: Multiple debug info for r4v2 int: [D('epConfig' int), D('channelCount' int)] */
    public static Pair<Integer, Integer> A02(IL il, boolean z) throws AJ {
        int A002 = A00(il);
        int channelConfiguration = A01(il);
        int A05 = il.A05(4);
        if (A002 == 5 || A002 == 29) {
            channelConfiguration = A01(il);
            A002 = A00(il);
            if (A002 == 22) {
                A05 = il.A05(4);
            }
        }
        boolean z2 = true;
        if (z) {
            if (!(A002 == 1 || A002 == 2 || A002 == 3 || A002 == 4 || A002 == 6 || A002 == 7 || A002 == 17)) {
                switch (A002) {
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    case 20:
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        break;
                    default:
                        throw new AJ(A04(0, 31, 122) + A002);
                }
            }
            A07(il, A002, A05);
            if (A01[4].charAt(0) != 'c') {
                A01[7] = "vV2yfuq3D8MlByvyd0FSsWmE07MYRaiH";
                switch (A002) {
                    case 17:
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    case 20:
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        int channelCount = il.A05(2);
                        if (channelCount == 2 || channelCount == 3) {
                            throw new AJ(A04(31, 22, 11) + channelCount);
                        }
                }
            } else {
                throw new RuntimeException();
            }
        }
        int i = A03[A05];
        if (i == -1) {
            z2 = false;
        }
        C0551Hx.A03(z2);
        return Pair.create(Integer.valueOf(channelConfiguration), Integer.valueOf(i));
    }

    public static Pair<Integer, Integer> A03(byte[] bArr) throws AJ {
        return A02(new IL(bArr), false);
    }

    public static void A07(IL il, int i, int i2) {
        il.A09(1);
        if (il.A0G()) {
            if (A01[5].length() != 13) {
                throw new RuntimeException();
            }
            A01[6] = "9ZbgWIK1Tjah9N2o7wCOkUZOiekVuClG";
            il.A09(14);
        }
        boolean A0G = il.A0G();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                il.A09(3);
            }
            if (A0G) {
                if (i == 22) {
                    il.A09(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    il.A09(3);
                }
                il.A09(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static byte[] A08(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] A09(byte[] bArr, int i, int i2) {
        byte[] bArr2 = A02;
        byte[] bArr3 = new byte[(bArr2.length + i2)];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, A02.length, i2);
        return bArr3;
    }
}
