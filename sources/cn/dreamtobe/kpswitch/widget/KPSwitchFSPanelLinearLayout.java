package cn.dreamtobe.kpswitch.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import cn.dreamtobe.kpswitch.b;

public class KPSwitchFSPanelLinearLayout extends LinearLayout implements b {
    private r6 b = new r6(this);

    public KPSwitchFSPanelLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void a(boolean z) {
        this.b.a(z);
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void d(int i) {
        u6.f(this, i);
    }

    @TargetApi(11)
    public KPSwitchFSPanelLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
