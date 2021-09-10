package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: p10  reason: default package */
public final class p10 extends i20.b {
    private final String a;
    private final String b;

    /* access modifiers changed from: package-private */
    /* renamed from: p10$b */
    public static final class b extends i20.b.a {
        private String a;
        private String b;

        b() {
        }

        @Override // defpackage.i20.b.a
        public i20.b a() {
            String str = this.a == null ? " key" : "";
            if (this.b == null) {
                str = ic.i(str, " value");
            }
            if (str.isEmpty()) {
                return new p10(this.a, this.b, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.b.a
        public i20.b.a b(String str) {
            Objects.requireNonNull(str, "Null key");
            this.a = str;
            return this;
        }

        @Override // defpackage.i20.b.a
        public i20.b.a c(String str) {
            Objects.requireNonNull(str, "Null value");
            this.b = str;
            return this;
        }
    }

    p10(String str, String str2, a aVar) {
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.i20.b
    public String b() {
        return this.a;
    }

    @Override // defpackage.i20.b
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.b)) {
            return false;
        }
        i20.b bVar = (i20.b) obj;
        if (!this.a.equals(bVar.b()) || !this.b.equals(bVar.c())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("CustomAttribute{key=");
        q.append(this.a);
        q.append(", value=");
        return ic.l(q, this.b, "}");
    }
}
