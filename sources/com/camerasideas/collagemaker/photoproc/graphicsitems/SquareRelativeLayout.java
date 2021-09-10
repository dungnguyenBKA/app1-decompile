package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

public class SquareRelativeLayout extends RelativeLayout {
    public SquareRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 && mode2 == 0) {
            throw new IllegalStateException("this view should have at least one specific or max size");
        }
        if (mode == 0) {
            size = size2;
        } else if (mode2 != 0) {
            size = Math.min(size, size2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
    }

    public SquareRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
