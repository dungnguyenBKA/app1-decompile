package defpackage;

/* renamed from: zk  reason: default package */
public final class zk<K, V> extends x<K, V> {
    private int j;

    @Override // defpackage.e0
    public void clear() {
        this.j = 0;
        super.clear();
    }

    @Override // defpackage.e0
    public int hashCode() {
        if (this.j == 0) {
            this.j = super.hashCode();
        }
        return this.j;
    }

    @Override // defpackage.e0
    public void i(e0<? extends K, ? extends V> e0Var) {
        this.j = 0;
        super.i(e0Var);
    }

    @Override // defpackage.e0
    public V j(int i) {
        this.j = 0;
        return (V) super.j(i);
    }

    @Override // defpackage.e0
    public V k(int i, V v) {
        this.j = 0;
        return (V) super.k(i, v);
    }

    @Override // java.util.Map, defpackage.e0
    public V put(K k, V v) {
        this.j = 0;
        return (V) super.put(k, v);
    }
}
