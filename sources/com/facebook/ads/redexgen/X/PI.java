package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.Nullable;

public interface PI {
    boolean A81();

    boolean A84();

    int getCurrentPositionInMillis();

    boolean getGlobalVisibleRect(Rect rect);

    long getInitialBufferTime();

    int getMeasuredHeight();

    int getMeasuredWidth();

    PO getVideoStartReason();

    @Nullable
    View getView();

    float getVolume();
}
