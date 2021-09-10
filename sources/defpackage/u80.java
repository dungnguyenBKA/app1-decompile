package defpackage;

/* renamed from: u80  reason: default package */
class u80 implements a70 {
    final /* synthetic */ Class b;
    final /* synthetic */ z60 c;

    /* renamed from: u80$a */
    class a extends z60<T1> {
        final /* synthetic */ Class a;

        a(Class cls) {
            this.a = cls;
        }

        @Override // defpackage.z60
        public T1 b(a90 a90) {
            T1 t1 = (T1) u80.this.c.b(a90);
            if (t1 == null || this.a.isInstance(t1)) {
                return t1;
            }
            StringBuilder q = ic.q("Expected a ");
            q.append(this.a.getName());
            q.append(" but was ");
            q.append(t1.getClass().getName());
            throw new x60(q.toString());
        }

        @Override // defpackage.z60
        public void c(c90 c90, T1 t1) {
            u80.this.c.c(c90, t1);
        }
    }

    u80(Class cls, z60 z60) {
        this.b = cls;
        this.c = z60;
    }

    @Override // defpackage.a70
    public <T2> z60<T2> a(j60 j60, z80<T2> z80) {
        Class<? super T2> rawType = z80.getRawType();
        if (!this.b.isAssignableFrom(rawType)) {
            return null;
        }
        return new a(rawType);
    }

    public String toString() {
        StringBuilder q = ic.q("Factory[typeHierarchy=");
        q.append(this.b.getName());
        q.append(",adapter=");
        q.append(this.c);
        q.append("]");
        return q.toString();
    }
}
