package defpackage;

import com.google.firebase.components.d;
import com.google.firebase.components.q;
import java.util.Iterator;
import java.util.Set;

/* renamed from: t50  reason: default package */
public class t50 implements y50 {
    private final String a;
    private final u50 b;

    t50(Set<v50> set, u50 u50) {
        this.a = c(set);
        this.b = u50;
    }

    public static d<y50> b() {
        d.b a2 = d.a(y50.class);
        a2.b(q.i(v50.class));
        a2.e(s50.b());
        return a2.c();
    }

    private static String c(Set<v50> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<v50> it = set.iterator();
        while (it.hasNext()) {
            v50 next = it.next();
            sb.append(next.a());
            sb.append('/');
            sb.append(next.b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // defpackage.y50
    public String a() {
        if (this.b.b().isEmpty()) {
            return this.a;
        }
        return this.a + ' ' + c(this.b.b());
    }
}
