package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* access modifiers changed from: package-private */
public class v implements Runnable {
    final /* synthetic */ ArrayList b;
    final /* synthetic */ Map c;

    v(w wVar, ArrayList arrayList, Map map) {
        this.b = arrayList;
        this.c = map;
    }

    public void run() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.b.get(i);
            c3.z(view, (String) this.c.get(c3.k(view)));
        }
    }
}
