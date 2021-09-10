package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: o10  reason: default package */
public final class o10 extends i20 {
    private final String b;
    private final String c;
    private final int d;
    private final String e;
    private final String f;
    private final String g;
    private final i20.d h;
    private final i20.c i;

    /* access modifiers changed from: package-private */
    /* renamed from: o10$b */
    public static final class b extends i20.a {
        private String a;
        private String b;
        private Integer c;
        private String d;
        private String e;
        private String f;
        private i20.d g;
        private i20.c h;

        b() {
        }

        @Override // defpackage.i20.a
        public i20 a() {
            String str = this.a == null ? " sdkVersion" : "";
            if (this.b == null) {
                str = ic.i(str, " gmpAppId");
            }
            if (this.c == null) {
                str = ic.i(str, " platform");
            }
            if (this.d == null) {
                str = ic.i(str, " installationUuid");
            }
            if (this.e == null) {
                str = ic.i(str, " buildVersion");
            }
            if (this.f == null) {
                str = ic.i(str, " displayVersion");
            }
            if (str.isEmpty()) {
                return new o10(this.a, this.b, this.c.intValue(), this.d, this.e, this.f, this.g, this.h, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.a
        public i20.a b(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.e = str;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a c(String str) {
            Objects.requireNonNull(str, "Null displayVersion");
            this.f = str;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a d(String str) {
            Objects.requireNonNull(str, "Null gmpAppId");
            this.b = str;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a e(String str) {
            Objects.requireNonNull(str, "Null installationUuid");
            this.d = str;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a f(i20.c cVar) {
            this.h = cVar;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a g(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a h(String str) {
            Objects.requireNonNull(str, "Null sdkVersion");
            this.a = str;
            return this;
        }

        @Override // defpackage.i20.a
        public i20.a i(i20.d dVar) {
            this.g = dVar;
            return this;
        }

        b(i20 i20, a aVar) {
            this.a = i20.i();
            this.b = i20.e();
            this.c = Integer.valueOf(i20.h());
            this.d = i20.f();
            this.e = i20.c();
            this.f = i20.d();
            this.g = i20.j();
            this.h = i20.g();
        }
    }

    o10(String str, String str2, int i2, String str3, String str4, String str5, i20.d dVar, i20.c cVar, a aVar) {
        this.b = str;
        this.c = str2;
        this.d = i2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = dVar;
        this.i = cVar;
    }

    @Override // defpackage.i20
    public String c() {
        return this.f;
    }

    @Override // defpackage.i20
    public String d() {
        return this.g;
    }

    @Override // defpackage.i20
    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        i20.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20)) {
            return false;
        }
        i20 i20 = (i20) obj;
        if (this.b.equals(i20.i()) && this.c.equals(i20.e()) && this.d == i20.h() && this.e.equals(i20.f()) && this.f.equals(i20.c()) && this.g.equals(i20.d()) && ((dVar = this.h) != null ? dVar.equals(i20.j()) : i20.j() == null)) {
            i20.c cVar = this.i;
            if (cVar == null) {
                if (i20.g() == null) {
                    return true;
                }
            } else if (cVar.equals(i20.g())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.i20
    public String f() {
        return this.e;
    }

    @Override // defpackage.i20
    public i20.c g() {
        return this.i;
    }

    @Override // defpackage.i20
    public int h() {
        return this.d;
    }

    public int hashCode() {
        int hashCode = (((((((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003;
        i20.d dVar = this.h;
        int i2 = 0;
        int hashCode2 = (hashCode ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        i20.c cVar = this.i;
        if (cVar != null) {
            i2 = cVar.hashCode();
        }
        return hashCode2 ^ i2;
    }

    @Override // defpackage.i20
    public String i() {
        return this.b;
    }

    @Override // defpackage.i20
    public i20.d j() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.i20
    public i20.a k() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder q = ic.q("CrashlyticsReport{sdkVersion=");
        q.append(this.b);
        q.append(", gmpAppId=");
        q.append(this.c);
        q.append(", platform=");
        q.append(this.d);
        q.append(", installationUuid=");
        q.append(this.e);
        q.append(", buildVersion=");
        q.append(this.f);
        q.append(", displayVersion=");
        q.append(this.g);
        q.append(", session=");
        q.append(this.h);
        q.append(", ndkPayload=");
        q.append(this.i);
        q.append("}");
        return q.toString();
    }
}
