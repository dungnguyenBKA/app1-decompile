package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: y10  reason: default package */
public final class y10 extends i20.d.AbstractC0101d.a.b {
    private final j20<i20.d.AbstractC0101d.a.b.e> a;
    private final i20.d.AbstractC0101d.a.b.c b;
    private final i20.d.AbstractC0101d.a.b.AbstractC0107d c;
    private final j20<i20.d.AbstractC0101d.a.b.AbstractC0103a> d;

    /* access modifiers changed from: package-private */
    /* renamed from: y10$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.AbstractC0105b {
        private j20<i20.d.AbstractC0101d.a.b.e> a;
        private i20.d.AbstractC0101d.a.b.c b;
        private i20.d.AbstractC0101d.a.b.AbstractC0107d c;
        private j20<i20.d.AbstractC0101d.a.b.AbstractC0103a> d;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0105b
        public i20.d.AbstractC0101d.a.b a() {
            String str = this.a == null ? " threads" : "";
            if (this.b == null) {
                str = ic.i(str, " exception");
            }
            if (this.c == null) {
                str = ic.i(str, " signal");
            }
            if (this.d == null) {
                str = ic.i(str, " binaries");
            }
            if (str.isEmpty()) {
                return new y10(this.a, this.b, this.c, this.d, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0105b
        public i20.d.AbstractC0101d.a.b.AbstractC0105b b(j20<i20.d.AbstractC0101d.a.b.AbstractC0103a> j20) {
            Objects.requireNonNull(j20, "Null binaries");
            this.d = j20;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0105b
        public i20.d.AbstractC0101d.a.b.AbstractC0105b c(i20.d.AbstractC0101d.a.b.c cVar) {
            this.b = cVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0105b
        public i20.d.AbstractC0101d.a.b.AbstractC0105b d(i20.d.AbstractC0101d.a.b.AbstractC0107d dVar) {
            this.c = dVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0105b
        public i20.d.AbstractC0101d.a.b.AbstractC0105b e(j20<i20.d.AbstractC0101d.a.b.e> j20) {
            Objects.requireNonNull(j20, "Null threads");
            this.a = j20;
            return this;
        }
    }

    y10(j20 j20, i20.d.AbstractC0101d.a.b.c cVar, i20.d.AbstractC0101d.a.b.AbstractC0107d dVar, j20 j202, a aVar) {
        this.a = j20;
        this.b = cVar;
        this.c = dVar;
        this.d = j202;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b
    public j20<i20.d.AbstractC0101d.a.b.AbstractC0103a> b() {
        return this.d;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b
    public i20.d.AbstractC0101d.a.b.c c() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b
    public i20.d.AbstractC0101d.a.b.AbstractC0107d d() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b
    public j20<i20.d.AbstractC0101d.a.b.e> e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b bVar = (i20.d.AbstractC0101d.a.b) obj;
        if (!this.a.equals(bVar.e()) || !this.b.equals(bVar.c()) || !this.c.equals(bVar.d()) || !this.d.equals(bVar.b())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("Execution{threads=");
        q.append(this.a);
        q.append(", exception=");
        q.append(this.b);
        q.append(", signal=");
        q.append(this.c);
        q.append(", binaries=");
        q.append(this.d);
        q.append("}");
        return q.toString();
    }
}
