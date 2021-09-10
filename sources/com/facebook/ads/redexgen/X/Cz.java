package com.facebook.ads.redexgen.X;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.UUID;

public final class Cz {
    public static byte[] A00;
    public static String[] A01;

    static {
        A05();
        A04();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 3);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{76, 111, 111, 116, 93, 104, 115, 113, 73, 104, 117, 112, 109, 86, 75, 77, 72, 72, 87, 74, 76, 93, 92, 24, 72, 75, 75, 80, 24, 78, 93, 74, 75, 81, 87, 86, 2, 24};
    }

    public static void A05() {
        A01 = new String[]{"kk3S4O13iVXJvtm5AjTeD8rK", "Zu4hi0TCs3bKXIhBk2aWCiDe3xK", "JowY5N4XtyrwAA9epoNCHGChZ5QJHmq", "OOxBqRpXIUSrAU80JlBeMYgVyXHV", "tCZgrksHUVK4eCN8oQ7yIu", "GrKlMP1w4PgYrm5YCKNZqmcWRop33Hln", "0sCqI3ucQZfe3Uil9qNltLDWT8T5PAU", "ug"};
    }

    public static int A00(byte[] bArr) {
        C0432Cy parsedAtom = A01(bArr);
        if (parsedAtom == null) {
            return -1;
        }
        return parsedAtom.A00;
    }

    /* JADX INFO: Multiple debug info for r1v5 byte[]: [D('dataSize' int), D('data' byte[])] */
    @Nullable
    public static C0432Cy A01(byte[] bArr) {
        IM im = new IM(bArr);
        if (im.A08() < 32) {
            return null;
        }
        im.A0Z(0);
        if (im.A09() != im.A05() + 4) {
            return null;
        }
        int A09 = im.A09();
        int i = AbstractC0420Ch.A0r;
        String[] strArr = A01;
        if (strArr[0].length() != strArr[7].length()) {
            A01[6] = "KiHnRKSUZsnBoZKY996tMhDtZ8Gdi7J";
            if (A09 != i) {
                return null;
            }
            int A012 = AbstractC0420Ch.A01(im.A09());
            if (A012 > 1) {
                Log.w(A02(0, 12, 31), A02(12, 26, 59) + A012);
                return null;
            }
            UUID uuid = new UUID(im.A0M(), im.A0M());
            if (A012 == 1) {
                im.A0a(im.A0I() * 16);
            }
            int A0I = im.A0I();
            if (A0I != im.A05()) {
                return null;
            }
            byte[] data = new byte[A0I];
            im.A0d(data, 0, A0I);
            return new C0432Cy(uuid, A012, data);
        }
        throw new RuntimeException();
    }

    @Nullable
    public static UUID A03(byte[] bArr) {
        C0432Cy A012 = A01(bArr);
        if (A012 != null) {
            return A012.A01;
        }
        if (A01[6].length() != 31) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "A19aWphbBlm9ojDJQ1W47aeMdyevB22";
        strArr[1] = "rfVibYQBAeR1UXfUamieG6t7la8";
        return null;
    }
}
