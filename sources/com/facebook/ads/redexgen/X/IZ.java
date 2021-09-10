package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.os.Trace;
import com.vungle.warren.error.VungleException;

public final class IZ {
    public static void A00() {
        if (C0556Ic.A02 >= 18) {
            A01();
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public static void A01() {
        Trace.endSection();
    }

    public static void A02(String str) {
        if (C0556Ic.A02 >= 18) {
            A03(str);
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public static void A03(String str) {
        Trace.beginSection(str);
    }
}
