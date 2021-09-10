package com.zjsoft.admob;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.formats.MediaView;

class q extends MediaView {
    final /* synthetic */ float h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    q(k kVar, Context context, float f) {
        super(context);
        this.h = f;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        if (this.h != 0.0f) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) (((float) View.MeasureSpec.getSize(i)) / this.h), 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
