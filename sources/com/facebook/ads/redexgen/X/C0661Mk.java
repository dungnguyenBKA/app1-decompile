package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.NativeAdLayout;

/* renamed from: com.facebook.ads.redexgen.X.Mk  reason: case insensitive filesystem */
public final class C0661Mk {
    public static String[] A00;
    public static final int A01 = ((int) (C0632Lh.A01 * 200.0f));
    public static final int A02 = ((int) (C0632Lh.A01 * 50.0f));
    public static final int A03 = ((int) (C0632Lh.A01 * 200.0f));

    public static void A03() {
        A00 = new String[]{"Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80", "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG", "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm", "v", "yiVoJ6", "bh6EDcFJy1WMlrC6ew5uNV", "HsXTYL", "k"};
    }

    static {
        A03();
    }

    public static AnonymousClass10 A00(@Nullable NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return AnonymousClass10.A05;
        }
        if (A04(nativeAdLayout)) {
            return AnonymousClass10.A06;
        }
        return AnonymousClass10.A04;
    }

    @Nullable
    public static AbstractC0660Mj A01(XJ xj, JC jc, String str, @Nullable NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return null;
        }
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int i = A01;
        if (width >= i && height >= i) {
            return new C1037aU(xj, jc, str);
        }
        if (width < A03 || height < A02) {
            return null;
        }
        return new C1041aY(xj, jc, str);
    }

    public static AbstractC0660Mj A02(XJ xj, JC jc, String str, AnonymousClass1S r4, MA ma, M9 m9) {
        return new C1042aZ(xj, jc, str, r4, ma, m9);
    }

    public static boolean A04(NativeAdLayout nativeAdLayout) {
        int h = nativeAdLayout.getWidth();
        int w = nativeAdLayout.getHeight();
        int i = A01;
        if (h < i || w < i) {
            if (h >= A03) {
                int i2 = A02;
                if (A00[5].length() != 22) {
                    throw new RuntimeException();
                }
                A00[5] = "hhrIY4o6fKEkU42z4UVpb3";
                if (w < i2) {
                    return true;
                }
            }
            return true;
        }
        return false;
    }
}
