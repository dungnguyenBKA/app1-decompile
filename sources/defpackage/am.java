package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.c;

/* renamed from: am  reason: default package */
public class am {
    private static am b;
    private ArrayList<c> a = new ArrayList<>();

    private am() {
    }

    public static am a() {
        if (b == null) {
            b = new am();
        }
        return b;
    }

    public void b(Object obj) {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).g(obj);
        }
    }

    public void c(Object obj) {
        for (int i = 0; i < this.a.size(); i++) {
            if (this.a.get(i).f(obj)) {
                return;
            }
        }
        c cVar = new c();
        cVar.k(obj);
        this.a.add(cVar);
    }

    public void d(Object obj) {
        Iterator<c> it = this.a.iterator();
        while (it.hasNext()) {
            if (it.next().f(obj)) {
                it.remove();
            }
        }
    }
}
