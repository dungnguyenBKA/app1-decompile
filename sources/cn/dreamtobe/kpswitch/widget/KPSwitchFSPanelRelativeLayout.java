package cn.dreamtobe.kpswitch.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import cn.dreamtobe.kpswitch.b;

public class KPSwitchFSPanelRelativeLayout extends RelativeLayout implements b {
    private r6 b = new r6(this);

    public KPSwitchFSPanelRelativeLayout(Context context, AttributeSet attributeSet) {
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

    public KPSwitchFSPanelRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
