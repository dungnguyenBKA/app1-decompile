package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Ty  reason: case insensitive filesystem */
public final class C0852Ty implements AnonymousClass5W {
    public static byte[] A02;
    public static String[] A03;
    public final AnonymousClass5X A00;
    public final String A01;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{5, 10, 1, -10, 78, 75, 69};
    }

    public static void A03() {
        A03 = new String[]{"TFthAsyh9DXeOXmOSrI", "6fWFj2GuIp8edYChPrJEmZ0EGdAH52zr", "1W8BLXCecsGswLg5J6ItB4TJ0IeP92", "LJOYl73w1qtKK7uJcnV", "z6IkqPokH6efARGWKazebLzdy8d5mCY", "2wZEZTk79zqBVt75gMVieTbdYLiT7Zir", "bDoQVkMDKn3JHFmlXSVDRiBYbpx4sGCA", "L28Z4g4sdLlGf5SKMowSfgQKz11TtxJ4"};
    }

    public C0852Ty(AnonymousClass5X r1, String str) {
        this.A00 = r1;
        this.A01 = str;
    }

    @Nullable
    public static C0852Ty A00(JSONObject jSONObject) {
        AnonymousClass5X A002 = AnonymousClass5X.A00(jSONObject.optString(A01(0, 4, 21)));
        String optString = jSONObject.optString(A01(4, 3, 93));
        if (A002 != null && optString != null) {
            return new C0852Ty(A002, optString);
        }
        String[] strArr = A03;
        if (strArr[7].charAt(27) != strArr[5].charAt(27)) {
            throw new RuntimeException();
        }
        A03[2] = "YX1kth4";
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass5W
    public final AnonymousClass5X A7Q() {
        return this.A00;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0068, code lost:
        if (r4 != r3) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006b, code lost:
        if (r4 != r3) goto L_0x006a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
        // Method dump skipped, instructions count: 128
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0852Ty.equals(java.lang.Object):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass5W
    public final String getUrl() {
        return this.A01;
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }
}
