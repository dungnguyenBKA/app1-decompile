package defpackage;

/* renamed from: t80  reason: default package */
class t80 implements a70 {
    final /* synthetic */ Class b;
    final /* synthetic */ Class c;
    final /* synthetic */ z60 d;

    t80(Class cls, Class cls2, z60 z60) {
        this.b = cls;
        this.c = cls2;
        this.d = z60;
    }

    @Override // defpackage.a70
    public <T> z60<T> a(j60 j60, z80<T> z80) {
        Class<? super T> rawType = z80.getRawType();
        if (rawType == this.b || rawType == this.c) {
            return this.d;
        }
        return null;
    }

    public String toString() {
        StringBuilder q = ic.q("Factory[type=");
        q.append(this.b.getName());
        q.append("+");
        q.append(this.c.getName());
        q.append(",adapter=");
        q.append(this.d);
        q.append("]");
        return q.toString();
    }
}
