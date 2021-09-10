package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.r;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final class q implements Runnable {
    final /* synthetic */ w b;
    final /* synthetic */ x c;
    final /* synthetic */ Object d;
    final /* synthetic */ r.a e;
    final /* synthetic */ ArrayList f;
    final /* synthetic */ View g;
    final /* synthetic */ Fragment h;
    final /* synthetic */ Fragment i;
    final /* synthetic */ boolean j;
    final /* synthetic */ ArrayList k;
    final /* synthetic */ Object l;
    final /* synthetic */ Rect m;

    q(w wVar, x xVar, Object obj, r.a aVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.b = wVar;
        this.c = xVar;
        this.d = obj;
        this.e = aVar;
        this.f = arrayList;
        this.g = view;
        this.h = fragment;
        this.i = fragment2;
        this.j = z;
        this.k = arrayList2;
        this.l = obj2;
        this.m = rect;
    }

    public void run() {
        x<String, View> e2 = r.e(this.b, this.c, this.d, this.e);
        if (e2 != null) {
            this.f.addAll(e2.values());
            this.f.add(this.g);
        }
        r.c(this.h, this.i, this.j, e2, false);
        Object obj = this.d;
        if (obj != null) {
            this.b.t(obj, this.k, this.f);
            View k2 = r.k(e2, this.e, this.l, this.j);
            if (k2 != null) {
                this.b.j(k2, this.m);
            }
        }
    }
}
