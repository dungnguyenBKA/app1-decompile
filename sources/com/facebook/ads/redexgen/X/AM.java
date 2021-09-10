package com.facebook.ads.redexgen.X;

import android.view.View;

public final class AM extends PD {
    public AM(XJ xj) {
        super(xj);
    }

    public final void onMeasure(int newHeightSpec, int i) {
        if (View.MeasureSpec.getMode(newHeightSpec) == 1073741824) {
            i = newHeightSpec;
        } else if (View.MeasureSpec.getMode(i) == 1073741824) {
            newHeightSpec = i;
        }
        super.onMeasure(newHeightSpec, i);
    }
}
