package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public class u implements Runnable {
    final /* synthetic */ ArrayList b;
    final /* synthetic */ Map c;

    u(w wVar, ArrayList arrayList, Map map) {
        this.b = arrayList;
        this.c = map;
    }

    public void run() {
        String str;
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.b.get(i);
            String k = c3.k(view);
            if (k != null) {
                Iterator it = this.c.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (k.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                c3.z(view, str);
            }
        }
    }
}
