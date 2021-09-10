package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: f20  reason: default package */
public final class f20 extends i20.d.AbstractC0101d.AbstractC0112d {
    private final String a;

    /* access modifiers changed from: package-private */
    /* renamed from: f20$b */
    public static final class b extends i20.d.AbstractC0101d.AbstractC0112d.a {
        private String a;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.AbstractC0112d.a
        public i20.d.AbstractC0101d.AbstractC0112d a() {
            String str = this.a == null ? " content" : "";
            if (str.isEmpty()) {
                return new f20(this.a, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.AbstractC0112d.a
        public i20.d.AbstractC0101d.AbstractC0112d.a b(String str) {
            Objects.requireNonNull(str, "Null content");
            this.a = str;
            return this;
        }
    }

    f20(String str, a aVar) {
        this.a = str;
    }

    @Override // defpackage.i20.d.AbstractC0101d.AbstractC0112d
    public String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i20.d.AbstractC0101d.AbstractC0112d) {
            return this.a.equals(((i20.d.AbstractC0101d.AbstractC0112d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return ic.l(ic.q("Log{content="), this.a, "}");
    }
}
