package defpackage;

/* renamed from: me0  reason: default package */
public enum me0 implements pe0<Object> {
    INSTANCE,
    NEVER;

    public void clear() {
    }

    public boolean d(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.be0
    public void e() {
    }

    public Object g() {
        return null;
    }

    @Override // defpackage.pe0
    public int h(int i) {
        return i & 2;
    }

    public boolean isEmpty() {
        return true;
    }
}
