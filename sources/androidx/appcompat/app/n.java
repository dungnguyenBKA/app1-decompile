package androidx.appcompat.app;

import android.view.View;

/* access modifiers changed from: package-private */
public class n extends j3 {
    final /* synthetic */ AppCompatDelegateImpl a;

    n(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.a = appCompatDelegateImpl;
    }

    @Override // defpackage.i3
    public void b(View view) {
        this.a.q.setAlpha(1.0f);
        this.a.t.f(null);
        this.a.t = null;
    }

    @Override // defpackage.j3, defpackage.i3
    public void c(View view) {
        this.a.q.setVisibility(0);
        this.a.q.sendAccessibilityEvent(32);
        if (this.a.q.getParent() instanceof View) {
            c3.t((View) this.a.q.getParent());
        }
    }
}
