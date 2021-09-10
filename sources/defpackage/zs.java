package defpackage;

import defpackage.ht;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: zs  reason: default package */
public final class zs extends ht {
    private final it a;
    private final String b;
    private final xr<?> c;
    private final zr<?, byte[]> d;
    private final wr e;

    /* renamed from: zs$b */
    static final class b extends ht.a {
        private it a;
        private String b;
        private xr<?> c;
        private zr<?, byte[]> d;
        private wr e;

        b() {
        }

        public ht a() {
            String str = this.a == null ? " transportContext" : "";
            if (this.b == null) {
                str = ic.i(str, " transportName");
            }
            if (this.c == null) {
                str = ic.i(str, " event");
            }
            if (this.d == null) {
                str = ic.i(str, " transformer");
            }
            if (this.e == null) {
                str = ic.i(str, " encoding");
            }
            if (str.isEmpty()) {
                return new zs(this.a, this.b, this.c, this.d, this.e, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        /* access modifiers changed from: package-private */
        public ht.a b(wr wrVar) {
            Objects.requireNonNull(wrVar, "Null encoding");
            this.e = wrVar;
            return this;
        }

        /* access modifiers changed from: package-private */
        public ht.a c(xr<?> xrVar) {
            Objects.requireNonNull(xrVar, "Null event");
            this.c = xrVar;
            return this;
        }

        /* access modifiers changed from: package-private */
        public ht.a d(zr<?, byte[]> zrVar) {
            Objects.requireNonNull(zrVar, "Null transformer");
            this.d = zrVar;
            return this;
        }

        public ht.a e(it itVar) {
            Objects.requireNonNull(itVar, "Null transportContext");
            this.a = itVar;
            return this;
        }

        public ht.a f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.b = str;
            return this;
        }
    }

    zs(it itVar, String str, xr xrVar, zr zrVar, wr wrVar, a aVar) {
        this.a = itVar;
        this.b = str;
        this.c = xrVar;
        this.d = zrVar;
        this.e = wrVar;
    }

    @Override // defpackage.ht
    public wr a() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.ht
    public xr<?> b() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.ht
    public zr<?, byte[]> c() {
        return this.d;
    }

    @Override // defpackage.ht
    public it d() {
        return this.a;
    }

    @Override // defpackage.ht
    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ht)) {
            return false;
        }
        ht htVar = (ht) obj;
        if (!this.a.equals(htVar.d()) || !this.b.equals(htVar.e()) || !this.c.equals(htVar.b()) || !this.d.equals(htVar.c()) || !this.e.equals(htVar.a())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("SendRequest{transportContext=");
        q.append(this.a);
        q.append(", transportName=");
        q.append(this.b);
        q.append(", event=");
        q.append(this.c);
        q.append(", transformer=");
        q.append(this.d);
        q.append(", encoding=");
        q.append(this.e);
        q.append("}");
        return q.toString();
    }
}
