package androidx.viewpager.widget;

import android.graphics.Rect;
import android.view.View;

class b implements y2 {
    private final Rect a = new Rect();
    final /* synthetic */ ViewPager b;

    b(ViewPager viewPager) {
        this.b = viewPager;
    }

    @Override // defpackage.y2
    public l3 a(View view, l3 l3Var) {
        l3 p = c3.p(view, l3Var);
        if (p.g()) {
            return p;
        }
        Rect rect = this.a;
        rect.left = p.c();
        rect.top = p.e();
        rect.right = p.d();
        rect.bottom = p.b();
        int childCount = this.b.getChildCount();
        for (int i = 0; i < childCount; i++) {
            l3 d = c3.d(this.b.getChildAt(i), p);
            rect.left = Math.min(d.c(), rect.left);
            rect.top = Math.min(d.e(), rect.top);
            rect.right = Math.min(d.d(), rect.right);
            rect.bottom = Math.min(d.b(), rect.bottom);
        }
        return p.h(rect.left, rect.top, rect.right, rect.bottom);
    }
}
