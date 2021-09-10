package defpackage;

import defpackage.w;
import java.util.HashMap;
import java.util.Map;

/* renamed from: v  reason: default package */
public class v<K, V> extends w<K, V> {
    private HashMap<K, w.c<K, V>> f = new HashMap<>();

    /* access modifiers changed from: protected */
    @Override // defpackage.w
    public w.c<K, V> c(K k) {
        return this.f.get(k);
    }

    public boolean contains(K k) {
        return this.f.containsKey(k);
    }

    @Override // defpackage.w
    public V g(K k) {
        V v = (V) super.g(k);
        this.f.remove(k);
        return v;
    }

    public Map.Entry<K, V> h(K k) {
        if (this.f.containsKey(k)) {
            return this.f.get(k).e;
        }
        return null;
    }

    public V i(K k, V v) {
        w.c<K, V> cVar = this.f.get(k);
        if (cVar != null) {
            return cVar.c;
        }
        this.f.put(k, f(k, v));
        return null;
    }
}
