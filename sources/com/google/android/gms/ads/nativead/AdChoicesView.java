package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.vungle.warren.error.VungleException;

public class AdChoicesView extends RelativeLayout {
    public AdChoicesView(Context context) {
        super(context);
    }

    public AdChoicesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdChoicesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public AdChoicesView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
