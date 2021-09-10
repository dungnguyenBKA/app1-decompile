package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: c20  reason: default package */
public final class c20 extends i20.d.AbstractC0101d.a.b.e {
    private final String a;
    private final int b;
    private final j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> c;

    /* access modifiers changed from: package-private */
    /* renamed from: c20$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.e.AbstractC0109a {
        private String a;
        private Integer b;
        private j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> c;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0109a
        public i20.d.AbstractC0101d.a.b.e a() {
            String str = this.a == null ? " name" : "";
            if (this.b == null) {
                str = ic.i(str, " importance");
            }
            if (this.c == null) {
                str = ic.i(str, " frames");
            }
            if (str.isEmpty()) {
                return new c20(this.a, this.b.intValue(), this.c, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0109a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0109a b(j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> j20) {
            Objects.requireNonNull(j20, "Null frames");
            this.c = j20;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0109a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0109a c(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0109a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0109a d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.a = str;
            return this;
        }
    }

    c20(String str, int i, j20 j20, a aVar) {
        this.a = str;
        this.b = i;
        this.c = j20;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e
    public j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> b() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e
    public int c() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e
    public String d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b.e)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b.e eVar = (i20.d.AbstractC0101d.a.b.e) obj;
        if (!this.a.equals(eVar.d()) || this.b != eVar.c() || !this.c.equals(eVar.b())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.c.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("Thread{name=");
        q.append(this.a);
        q.append(", importance=");
        q.append(this.b);
        q.append(", frames=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
