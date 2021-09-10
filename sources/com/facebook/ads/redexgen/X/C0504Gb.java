package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Gb  reason: case insensitive filesystem */
public final class C0504Gb {
    public static byte[] A00;
    public static String[] A01;

    static {
        A04();
        A03();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 92);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{60, 12, 11, 53, 27, 17, 49, 27, 17, 100, 31, 54, 99, 71, 15, 125, 51, 50, 98, 20};
    }

    public static void A04() {
        A01 = new String[]{"gehgTzpUAqg89EXiGGasdpNXUtk8k2dp", "VbYmpptfSIV8qdRodswF8V1n59zym7XK", "E44YX0wg", "TCU5yEG5ZIofchF4EQjDHlsQntmp46Yu", "EkmeYw2kQLbBECw2eANnaw7CzESY", "H", "OFssNajfj", "bi8IHmxX7dNFBPIWLmj9QBiFjZgAYPjN"};
    }

    /* JADX INFO: Multiple debug info for r0v10 java.lang.String: [D('globalStyles' java.util.Map<java.lang.String, com.facebook.ads.internal.exoplayer2.text.ttml.TtmlStyle>), D('id' java.lang.String)] */
    public static C0508Gf A00(C0508Gf gf, String[] strArr, Map<String, C0508Gf> map) {
        if (gf == null && strArr == null) {
            return null;
        }
        int i = 0;
        if (gf == null && strArr.length == 1) {
            return map.get(strArr[0]);
        }
        if (gf == null && strArr.length > 1) {
            C0508Gf gf2 = new C0508Gf();
            int length = strArr.length;
            while (i < length) {
                gf2.A0F(map.get(strArr[i]));
                i++;
            }
            return gf2;
        } else if (gf != null && strArr != null && strArr.length == 1) {
            return gf.A0F(map.get(strArr[0]));
        } else {
            if (gf == null || strArr == null || strArr.length <= 1) {
                return gf;
            }
            int length2 = strArr.length;
            while (i < length2) {
                gf.A0F(map.get(strArr[i]));
                i++;
            }
            return gf;
        }
    }

    public static String A02(String str) {
        String A012 = A01(0, 1, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        String replaceAll = str.replaceAll(A01(1, 2, 93), A012).replaceAll(A01(4, 5, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT), A012);
        String A013 = A01(3, 1, 73);
        return replaceAll.replaceAll(A012, A013).replaceAll(A01(9, 11, 99), A013);
    }

    public static void A05(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }

    public static void A06(SpannableStringBuilder spannableStringBuilder, int i, int i2, C0508Gf gf) {
        if (gf.A08() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(gf.A08()), i, i2, 33);
        }
        if (gf.A0Q()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (gf.A0R()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (gf.A0P()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(gf.A06()), i, i2, 33);
        }
        if (gf.A0O()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(gf.A05()), i, i2, 33);
        }
        if (gf.A0M() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(gf.A0M()), i, i2, 33);
        }
        Layout.Alignment A09 = gf.A09();
        String[] strArr = A01;
        if (strArr[0].charAt(0) != strArr[1].charAt(0)) {
            String[] strArr2 = A01;
            strArr2[5] = ADRequestList.ORDER_M;
            strArr2[2] = "ujiHtYdg";
            if (A09 != null) {
                spannableStringBuilder.setSpan(new AlignmentSpan.Standard(gf.A09()), i, i2, 33);
            }
            int A07 = gf.A07();
            if (A07 == 1) {
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) gf.A04(), true), i, i2, 33);
            } else if (A07 == 2) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(gf.A04()), i, i2, 33);
            } else if (A07 == 3) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(gf.A04() / 100.0f), i, i2, 33);
            }
        } else {
            throw new RuntimeException();
        }
    }
}
