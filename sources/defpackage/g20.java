package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: g20  reason: default package */
public final class g20 extends i20.d.e {
    private final int a;
    private final String b;
    private final String c;
    private final boolean d;

    /* access modifiers changed from: package-private */
    /* renamed from: g20$b */
    public static final class b extends i20.d.e.a {
        private Integer a;
        private String b;
        private String c;
        private Boolean d;

        b() {
        }

        @Override // defpackage.i20.d.e.a
        public i20.d.e a() {
            String str = this.a == null ? " platform" : "";
            if (this.b == null) {
                str = ic.i(str, " version");
            }
            if (this.c == null) {
                str = ic.i(str, " buildVersion");
            }
            if (this.d == null) {
                str = ic.i(str, " jailbroken");
            }
            if (str.isEmpty()) {
                return new g20(this.a.intValue(), this.b, this.c, this.d.booleanValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.e.a
        public i20.d.e.a b(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.c = str;
            return this;
        }

        @Override // defpackage.i20.d.e.a
        public i20.d.e.a c(boolean z) {
            this.d = Boolean.valueOf(z);
            return this;
        }

        @Override // defpackage.i20.d.e.a
        public i20.d.e.a d(int i) {
            this.a = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.e.a
        public i20.d.e.a e(String str) {
            Objects.requireNonNull(str, "Null version");
            this.b = str;
            return this;
        }
    }

    g20(int i, String str, String str2, boolean z, a aVar) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
    }

    @Override // defpackage.i20.d.e
    public String b() {
        return this.c;
    }

    @Override // defpackage.i20.d.e
    public int c() {
        return this.a;
    }

    @Override // defpackage.i20.d.e
    public String d() {
        return this.b;
    }

    @Override // defpackage.i20.d.e
    public boolean e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.e)) {
            return false;
        }
        i20.d.e eVar = (i20.d.e) obj;
        if (this.a != eVar.c() || !this.b.equals(eVar.d()) || !this.c.equals(eVar.b()) || this.d != eVar.e()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ (this.d ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder q = ic.q("OperatingSystem{platform=");
        q.append(this.a);
        q.append(", version=");
        q.append(this.b);
        q.append(", buildVersion=");
        q.append(this.c);
        q.append(", jailbroken=");
        q.append(this.d);
        q.append("}");
        return q.toString();
    }
}
