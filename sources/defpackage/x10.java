package defpackage;

import defpackage.i20;

/* access modifiers changed from: package-private */
/* renamed from: x10  reason: default package */
public final class x10 extends i20.d.AbstractC0101d.a {
    private final i20.d.AbstractC0101d.a.b a;
    private final j20<i20.b> b;
    private final Boolean c;
    private final int d;

    /* access modifiers changed from: package-private */
    /* renamed from: x10$b */
    public static final class b extends i20.d.AbstractC0101d.a.AbstractC0102a {
        private i20.d.AbstractC0101d.a.b a;
        private j20<i20.b> b;
        private Boolean c;
        private Integer d;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.AbstractC0102a
        public i20.d.AbstractC0101d.a a() {
            String str = this.a == null ? " execution" : "";
            if (this.d == null) {
                str = ic.i(str, " uiOrientation");
            }
            if (str.isEmpty()) {
                return new x10(this.a, this.b, this.c, this.d.intValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.AbstractC0102a
        public i20.d.AbstractC0101d.a.AbstractC0102a b(Boolean bool) {
            this.c = bool;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.AbstractC0102a
        public i20.d.AbstractC0101d.a.AbstractC0102a c(j20<i20.b> j20) {
            this.b = j20;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.AbstractC0102a
        public i20.d.AbstractC0101d.a.AbstractC0102a d(i20.d.AbstractC0101d.a.b bVar) {
            this.a = bVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.AbstractC0102a
        public i20.d.AbstractC0101d.a.AbstractC0102a e(int i) {
            this.d = Integer.valueOf(i);
            return this;
        }

        b(i20.d.AbstractC0101d.a aVar, a aVar2) {
            this.a = aVar.d();
            this.b = aVar.c();
            this.c = aVar.b();
            this.d = Integer.valueOf(aVar.e());
        }
    }

    x10(i20.d.AbstractC0101d.a.b bVar, j20 j20, Boolean bool, int i, a aVar) {
        this.a = bVar;
        this.b = j20;
        this.c = bool;
        this.d = i;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a
    public Boolean b() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a
    public j20<i20.b> c() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a
    public i20.d.AbstractC0101d.a.b d() {
        return this.a;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a
    public int e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        j20<i20.b> j20;
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a)) {
            return false;
        }
        i20.d.AbstractC0101d.a aVar = (i20.d.AbstractC0101d.a) obj;
        if (!this.a.equals(aVar.d()) || ((j20 = this.b) != null ? !j20.equals(aVar.c()) : aVar.c() != null) || ((bool = this.c) != null ? !bool.equals(aVar.b()) : aVar.b() != null) || this.d != aVar.e()) {
            return false;
        }
        return true;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a
    public i20.d.AbstractC0101d.a.AbstractC0102a f() {
        return new b(this, null);
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        j20<i20.b> j20 = this.b;
        int i = 0;
        int hashCode2 = (hashCode ^ (j20 == null ? 0 : j20.hashCode())) * 1000003;
        Boolean bool = this.c;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((hashCode2 ^ i) * 1000003) ^ this.d;
    }

    public String toString() {
        StringBuilder q = ic.q("Application{execution=");
        q.append(this.a);
        q.append(", customAttributes=");
        q.append(this.b);
        q.append(", background=");
        q.append(this.c);
        q.append(", uiOrientation=");
        return ic.k(q, this.d, "}");
    }
}
