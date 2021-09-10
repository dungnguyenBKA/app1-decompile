package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;

public final class QG {
    public static boolean A00(View view) {
        if (view.getBackground() == null || (Build.VERSION.SDK_INT >= 19 && view.getBackground().getAlpha() <= 0)) {
            return true;
        }
        return false;
    }
}
