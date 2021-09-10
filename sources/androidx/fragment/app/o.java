package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final class o implements Runnable {
    final /* synthetic */ Object b;
    final /* synthetic */ w c;
    final /* synthetic */ View d;
    final /* synthetic */ Fragment e;
    final /* synthetic */ ArrayList f;
    final /* synthetic */ ArrayList g;
    final /* synthetic */ ArrayList h;
    final /* synthetic */ Object i;

    o(Object obj, w wVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.b = obj;
        this.c = wVar;
        this.d = view;
        this.e = fragment;
        this.f = arrayList;
        this.g = arrayList2;
        this.h = arrayList3;
        this.i = obj2;
    }

    public void run() {
        Object obj = this.b;
        if (obj != null) {
            this.c.m(obj, this.d);
            this.g.addAll(r.h(this.c, this.b, this.e, this.f, this.d));
        }
        if (this.h != null) {
            if (this.i != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.d);
                this.c.n(this.i, this.h, arrayList);
            }
            this.h.clear();
            this.h.add(this.d);
        }
    }
}
