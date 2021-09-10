package com.camerasideas.baseutils.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;

public class SpeedRecyclerView extends RecyclerView {
    public SpeedRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i, int i2) {
        int i3;
        int i4;
        if (i > 0) {
            i3 = Math.min(i, 8000);
        } else {
            i3 = Math.max(i, -8000);
        }
        if (i2 > 0) {
            i4 = Math.min(i2, 8000);
        } else {
            i4 = Math.max(i2, -8000);
        }
        return super.fling(i3, i4);
    }

    public SpeedRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
