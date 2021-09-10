package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;

/* access modifiers changed from: package-private */
public final class p implements Runnable {
    final /* synthetic */ Fragment b;
    final /* synthetic */ Fragment c;
    final /* synthetic */ boolean d;
    final /* synthetic */ x e;
    final /* synthetic */ View f;
    final /* synthetic */ w g;
    final /* synthetic */ Rect h;

    p(Fragment fragment, Fragment fragment2, boolean z, x xVar, View view, w wVar, Rect rect) {
        this.b = fragment;
        this.c = fragment2;
        this.d = z;
        this.e = xVar;
        this.f = view;
        this.g = wVar;
        this.h = rect;
    }

    public void run() {
        r.c(this.b, this.c, this.d, this.e, false);
        View view = this.f;
        if (view != null) {
            this.g.j(view, this.h);
        }
    }
}
