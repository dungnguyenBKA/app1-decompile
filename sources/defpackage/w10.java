package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: w10  reason: default package */
public final class w10 extends i20.d.AbstractC0101d {
    private final long a;
    private final String b;
    private final i20.d.AbstractC0101d.a c;
    private final i20.d.AbstractC0101d.c d;
    private final i20.d.AbstractC0101d.AbstractC0112d e;

    /* access modifiers changed from: package-private */
    /* renamed from: w10$b */
    public static final class b extends i20.d.AbstractC0101d.b {
        private Long a;
        private String b;
        private i20.d.AbstractC0101d.a c;
        private i20.d.AbstractC0101d.c d;
        private i20.d.AbstractC0101d.AbstractC0112d e;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d a() {
            String str = this.a == null ? " timestamp" : "";
            if (this.b == null) {
                str = ic.i(str, " type");
            }
            if (this.c == null) {
                str = ic.i(str, " app");
            }
            if (this.d == null) {
                str = ic.i(str, " device");
            }
            if (str.isEmpty()) {
                return new w10(this.a.longValue(), this.b, this.c, this.d, this.e, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d.b b(i20.d.AbstractC0101d.a aVar) {
            this.c = aVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d.b c(i20.d.AbstractC0101d.c cVar) {
            this.d = cVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d.b d(i20.d.AbstractC0101d.AbstractC0112d dVar) {
            this.e = dVar;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d.b e(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.b
        public i20.d.AbstractC0101d.b f(String str) {
            Objects.requireNonNull(str, "Null type");
            this.b = str;
            return this;
        }

        b(i20.d.AbstractC0101d dVar, a aVar) {
            this.a = Long.valueOf(dVar.e());
            this.b = dVar.f();
            this.c = dVar.b();
            this.d = dVar.c();
            this.e = dVar.d();
        }
    }

    w10(long j, String str, i20.d.AbstractC0101d.a aVar, i20.d.AbstractC0101d.c cVar, i20.d.AbstractC0101d.AbstractC0112d dVar, a aVar2) {
        this.a = j;
        this.b = str;
        this.c = aVar;
        this.d = cVar;
        this.e = dVar;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public i20.d.AbstractC0101d.a b() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public i20.d.AbstractC0101d.c c() {
        return this.d;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public i20.d.AbstractC0101d.AbstractC0112d d() {
        return this.e;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public long e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d)) {
            return false;
        }
        i20.d.AbstractC0101d dVar = (i20.d.AbstractC0101d) obj;
        if (this.a == dVar.e() && this.b.equals(dVar.f()) && this.c.equals(dVar.b()) && this.d.equals(dVar.c())) {
            i20.d.AbstractC0101d.AbstractC0112d dVar2 = this.e;
            if (dVar2 == null) {
                if (dVar.d() == null) {
                    return true;
                }
            } else if (dVar2.equals(dVar.d())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public String f() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d
    public i20.d.AbstractC0101d.b g() {
        return new b(this, null);
    }

    public int hashCode() {
        long j = this.a;
        int hashCode = (((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        i20.d.AbstractC0101d.AbstractC0112d dVar = this.e;
        return (dVar == null ? 0 : dVar.hashCode()) ^ hashCode;
    }

    public String toString() {
        StringBuilder q = ic.q("Event{timestamp=");
        q.append(this.a);
        q.append(", type=");
        q.append(this.b);
        q.append(", app=");
        q.append(this.c);
        q.append(", device=");
        q.append(this.d);
        q.append(", log=");
        q.append(this.e);
        q.append("}");
        return q.toString();
    }
}
