package cn.dreamtobe.kpswitch.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import cn.dreamtobe.kpswitch.a;
import cn.dreamtobe.kpswitch.b;

public class KPSwitchPanelRelativeLayout extends RelativeLayout implements b, a {
    private s6 b;

    public KPSwitchPanelRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new s6(this, attributeSet);
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void a(boolean z) {
        this.b.g(z);
    }

    @Override // cn.dreamtobe.kpswitch.a
    public boolean b() {
        return this.b.b();
    }

    @Override // cn.dreamtobe.kpswitch.a
    public void c() {
        this.b.c();
    }

    @Override // cn.dreamtobe.kpswitch.b
    public void d(int i) {
        this.b.f(i);
    }

    @Override // cn.dreamtobe.kpswitch.a
    public void e() {
        super.setVisibility(0);
    }

    @Override // cn.dreamtobe.kpswitch.a
    public boolean isVisible() {
        return this.b.isVisible();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int[] d = this.b.d(i, i2);
        super.onMeasure(d[0], d[1]);
    }

    public void setVisibility(int i) {
        if (!this.b.a(i)) {
            super.setVisibility(i);
        }
    }

    public KPSwitchPanelRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new s6(this, attributeSet);
    }
}
