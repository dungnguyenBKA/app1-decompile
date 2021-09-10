package defpackage;

import defpackage.i20;
import java.util.Objects;

/* renamed from: a20  reason: default package */
final class a20 extends i20.d.AbstractC0101d.a.b.c {
    private final String a;
    private final String b;
    private final j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> c;
    private final i20.d.AbstractC0101d.a.b.c d;
    private final int e;

    /* access modifiers changed from: package-private */
    /* renamed from: a20$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.c.AbstractC0106a {
        private String a;
        private String b;
        private j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> c;
        private i20.d.AbstractC0101d.a.b.c d;
        private Integer e;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c a() {
            String str = this.a == null ? " type" : "";
            if (this.c == null) {
                str = ic.i(str, " frames");
            }
            if (this.e == null) {
                str = ic.i(str, " overflowCount");
            }
            if (str.isEmpty()) {
                return new a20(this.a, this.b, this.c, this.d, this.e.intValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c.AbstractC0106a b(i20.d.AbstractC0101d.a.b.c cVar) {
            this.d = cVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c.AbstractC0106a c(j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> j20) {
            Objects.requireNonNull(j20, "Null frames");
            this.c = j20;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c.AbstractC0106a d(int i) {
            this.e = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c.AbstractC0106a e(String str) {
            this.b = str;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.c.AbstractC0106a
        public i20.d.AbstractC0101d.a.b.c.AbstractC0106a f(String str) {
            Objects.requireNonNull(str, "Null type");
            this.a = str;
            return this;
        }
    }

    a20(String str, String str2, j20 j20, i20.d.AbstractC0101d.a.b.c cVar, int i, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = j20;
        this.d = cVar;
        this.e = i;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.c
    public i20.d.AbstractC0101d.a.b.c b() {
        return this.d;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.c
    public j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> c() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.c
    public int d() {
        return this.e;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.c
    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        String str;
        i20.d.AbstractC0101d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b.c)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b.c cVar2 = (i20.d.AbstractC0101d.a.b.c) obj;
        if (!this.a.equals(cVar2.f()) || ((str = this.b) != null ? !str.equals(cVar2.e()) : cVar2.e() != null) || !this.c.equals(cVar2.c()) || ((cVar = this.d) != null ? !cVar.equals(cVar2.b()) : cVar2.b() != null) || this.e != cVar2.d()) {
            return false;
        }
        return true;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.c
    public String f() {
        return this.a;
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        String str = this.b;
        int i = 0;
        int hashCode2 = (((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        i20.d.AbstractC0101d.a.b.c cVar = this.d;
        if (cVar != null) {
            i = cVar.hashCode();
        }
        return ((hashCode2 ^ i) * 1000003) ^ this.e;
    }

    public String toString() {
        StringBuilder q = ic.q("Exception{type=");
        q.append(this.a);
        q.append(", reason=");
        q.append(this.b);
        q.append(", frames=");
        q.append(this.c);
        q.append(", causedBy=");
        q.append(this.d);
        q.append(", overflowCount=");
        return ic.k(q, this.e, "}");
    }
}
