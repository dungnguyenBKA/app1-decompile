package androidx.appcompat.app;

import android.view.View;

/* access modifiers changed from: package-private */
public class j implements y2 {
    final /* synthetic */ AppCompatDelegateImpl a;

    j(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.a = appCompatDelegateImpl;
    }

    @Override // defpackage.y2
    public l3 a(View view, l3 l3Var) {
        int e = l3Var.e();
        int e0 = this.a.e0(e);
        if (e != e0) {
            l3Var = l3Var.h(l3Var.c(), e0, l3Var.d(), l3Var.b());
        }
        return c3.p(view, l3Var);
    }
}
