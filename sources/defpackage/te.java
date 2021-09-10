package defpackage;

import defpackage.ye;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: te  reason: default package */
public class te<K extends ye, V> {
    private final a<K, V> a = new a<>(null);
    private final Map<K, a<K, V>> b = new HashMap();

    /* access modifiers changed from: private */
    /* renamed from: te$a */
    public static class a<K, V> {
        final K a;
        private List<V> b;
        a<K, V> c;
        a<K, V> d;

        a() {
            this(null);
        }

        public void a(V v) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            this.b.add(v);
        }

        public V b() {
            List<V> list = this.b;
            int size = list != null ? list.size() : 0;
            if (size > 0) {
                return this.b.remove(size - 1);
            }
            return null;
        }

        public int c() {
            List<V> list = this.b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        a(K k) {
            this.d = this;
            this.c = this;
            this.a = k;
        }
    }

    te() {
    }

    public V a(K k) {
        a<K, V> aVar = this.b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            this.b.put(k, aVar);
        } else {
            k.a();
        }
        a<K, V> aVar2 = aVar.d;
        aVar2.c = aVar.c;
        aVar.c.d = aVar2;
        a<K, V> aVar3 = this.a;
        aVar.d = aVar3;
        a<K, V> aVar4 = aVar3.c;
        aVar.c = aVar4;
        aVar4.d = aVar;
        aVar.d.c = aVar;
        return aVar.b();
    }

    public void b(K k, V v) {
        a<K, V> aVar = this.b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            a<K, V> aVar2 = aVar.d;
            aVar2.c = aVar.c;
            aVar.c.d = aVar2;
            a<K, V> aVar3 = this.a;
            aVar.d = aVar3.d;
            aVar.c = aVar3;
            aVar3.d = aVar;
            aVar.d.c = aVar;
            this.b.put(k, aVar);
        } else {
            k.a();
        }
        aVar.a(v);
    }

    public V c() {
        for (a<K, V> aVar = this.a.d; !aVar.equals(this.a); aVar = aVar.d) {
            V b2 = aVar.b();
            if (b2 != null) {
                return b2;
            }
            a<K, V> aVar2 = aVar.d;
            aVar2.c = aVar.c;
            aVar.c.d = aVar2;
            this.b.remove(aVar.a);
            aVar.a.a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a<K, V> aVar = this.a.c; !aVar.equals(this.a); aVar = aVar.c) {
            z = true;
            sb.append('{');
            sb.append((Object) aVar.a);
            sb.append(':');
            sb.append(aVar.c());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
