package cn.dreamtobe.kpswitch.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import cn.dreamtobe.kpswitch.b;

public class KPSwitchFSPanelFrameLayout extends FrameLayout implements b {
    private r6 b = new r6(this);

    public KPSwitchFSPanelFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void a(boolean z) {
        this.b.a(z);
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void d(int i) {
    }

    public KPSwitchFSPanelFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
