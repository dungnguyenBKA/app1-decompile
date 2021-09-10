package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zw  reason: case insensitive filesystem */
public class C1006Zw implements AbstractC0451Dw {
    public static byte[] A00;
    public static String[] A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{109, 88, 88, 73, 65, 92, 88, 73, 72, 12, 88, 67, 12, 79, 94, 73, 77, 88, 73, 12, 72, 73, 79, 67, 72, 73, 94, 12, 74, 67, 94, 12, 89, 66, 95, 89, 92, 92, 67, 94, 88, 73, 72, 12, 74, 67, 94, 65, 77, 88, 88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, 22, 80, 93, 10, 14, 31, 31, 3, 6, 12, 14, 27, 6, 0, 1, 64, 23, 66, 10, 2, 28, 8, 50, 35, 35, 63, 58, 48, 50, 39, 58, 60, 61, 124, 43, 126, 32, 48, 39, 54, 96, 102};
    }

    public static void A02() {
        A01 = new String[]{"aIgF7yW6te9d0giIJjPlgLYuMarqNmaI", "5uowvZFp", "cObh83RuJ2BcUv3u494pfG0SonjgkZ34", "vjRgY08J1B3TNMsxRteKWvE9VDogNaKh", "qNUTjYBqOOgeDCHuUlR3yEqIWp1K4VGN", "N6vmBeMb9YQ5y6AoxxD7YUaD7FUFK", "OjnTWYSeBoS9dL1Ai6OGe6VjE6jgVlWS", "CC64HnyKjXihB9EkxjxtlcenpS0"};
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x008c  */
    @Override // com.facebook.ads.redexgen.X.AbstractC0451Dw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.facebook.ads.redexgen.X.AbstractC0449Du A4F(com.facebook.ads.internal.exoplayer2.Format r9) {
        /*
        // Method dump skipped, instructions count: 152
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1006Zw.A4F(com.facebook.ads.internal.exoplayer2.Format):com.facebook.ads.redexgen.X.Du");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0451Dw
    public final boolean AEH(Format format) {
        String str = format.A0O;
        if (A00(50, 15, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE).equals(str) || A00(65, 18, 60).equals(str) || A00(83, 20, 0).equals(str)) {
            return true;
        }
        return false;
    }
}
