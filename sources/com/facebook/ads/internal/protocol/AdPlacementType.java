package com.facebook.ads.internal.protocol;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;

public enum AdPlacementType {
    BANNER(A00(58, 6, 15)),
    INTERSTITIAL(A00(64, 12, 17)),
    NATIVE(A00(76, 6, 77)),
    NATIVE_BANNER(A00(82, 13, 15)),
    REWARDED_VIDEO(A00(95, 14, 100)),
    UNKNOWN(A00(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, 7, 15));
    
    public static byte[] A01;
    public String A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{20, 19, 32, 32, 23, 36, 35, 40, 46, 31, 44, 45, 46, 35, 46, 35, 27, 38, 38, 25, 44, 33, 46, 29, 4, -9, 10, -1, 12, -5, 21, -8, -9, 4, 4, -5, 8, -40, -53, -35, -57, -40, -54, -53, -54, -27, -36, -49, -54, -53, -43, 22, 15, 12, 15, 16, 24, 15, -44, -45, -32, -32, -41, -28, -35, -30, -24, -39, -26, -25, -24, -35, -24, -35, -43, -32, 30, 17, 36, 25, 38, 21, -32, -45, -26, -37, -24, -41, -47, -44, -45, -32, -32, -41, -28, 57, 44, 62, 40, 57, 43, 44, 43, 38, 61, 48, 43, 44, 54, -25, -32, -35, -32, -31, -23, -32};
    }

    /* access modifiers changed from: public */
    static {
        A01();
    }

    /* access modifiers changed from: public */
    AdPlacementType(String str) {
        this.A00 = str;
    }

    public static AdPlacementType fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (Exception unused) {
            return UNKNOWN;
        }
    }

    public String toString() {
        return this.A00;
    }
}
