package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public class t implements Runnable {
    final /* synthetic */ int b;
    final /* synthetic */ ArrayList c;
    final /* synthetic */ ArrayList d;
    final /* synthetic */ ArrayList e;
    final /* synthetic */ ArrayList f;

    t(w wVar, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.b = i;
        this.c = arrayList;
        this.d = arrayList2;
        this.e = arrayList3;
        this.f = arrayList4;
    }

    public void run() {
        for (int i = 0; i < this.b; i++) {
            c3.z((View) this.c.get(i), (String) this.d.get(i));
            c3.z((View) this.e.get(i), (String) this.f.get(i));
        }
    }
}
