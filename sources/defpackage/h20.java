package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: h20  reason: default package */
public final class h20 extends i20.d.f {
    private final String a;

    /* access modifiers changed from: package-private */
    /* renamed from: h20$b */
    public static final class b extends i20.d.f.a {
        private String a;

        b() {
        }

        @Override // defpackage.i20.d.f.a
        public i20.d.f a() {
            String str = this.a == null ? " identifier" : "";
            if (str.isEmpty()) {
                return new h20(this.a, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.f.a
        public i20.d.f.a b(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.a = str;
            return this;
        }
    }

    h20(String str, a aVar) {
        this.a = str;
    }

    @Override // defpackage.i20.d.f
    public String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i20.d.f) {
            return this.a.equals(((i20.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return ic.l(ic.q("User{identifier="), this.a, "}");
    }
}
