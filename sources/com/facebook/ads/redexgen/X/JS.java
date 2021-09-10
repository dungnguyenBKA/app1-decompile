package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public enum JS {
    A05(0, NativeAdBase.MediaCacheFlag.NONE),
    A04(1, NativeAdBase.MediaCacheFlag.ALL);
    
    public static byte[] A02;
    public final long A00;
    public final NativeAdBase.MediaCacheFlag A01;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{70, 75, 75, 34, 35, 34, 41};
    }

    /* access modifiers changed from: public */
    static {
        A02();
    }

    /* access modifiers changed from: public */
    JS(long j, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = j;
        this.A01 = mediaCacheFlag;
    }

    public static JS A00(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        JS[] values = values();
        for (JS js : values) {
            if (js.A01 == mediaCacheFlag) {
                return js;
            }
        }
        return null;
    }
}
