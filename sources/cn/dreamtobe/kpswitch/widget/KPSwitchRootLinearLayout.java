package cn.dreamtobe.kpswitch.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

public class KPSwitchRootLinearLayout extends LinearLayout {
    private t6 b = new t6(this);

    public KPSwitchRootLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        this.b.b(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        super.onMeasure(i, i2);
    }

    @TargetApi(11)
    public KPSwitchRootLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
