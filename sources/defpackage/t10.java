package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: t10  reason: default package */
public final class t10 extends i20.d.a {
    private final String a;
    private final String b;
    private final String c;
    private final i20.d.a.b d = null;
    private final String e;
    private final String f;
    private final String g;

    /* access modifiers changed from: package-private */
    /* renamed from: t10$b */
    public static final class b extends i20.d.a.AbstractC0100a {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;

        b() {
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a a() {
            String str = this.a == null ? " identifier" : "";
            if (this.b == null) {
                str = ic.i(str, " version");
            }
            if (str.isEmpty()) {
                return new t10(this.a, this.b, this.c, null, this.d, this.e, this.f, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a b(String str) {
            this.e = str;
            return this;
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a c(String str) {
            this.f = str;
            return this;
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a d(String str) {
            this.c = str;
            return this;
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a e(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.a = str;
            return this;
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a f(String str) {
            this.d = str;
            return this;
        }

        @Override // defpackage.i20.d.a.AbstractC0100a
        public i20.d.a.AbstractC0100a g(String str) {
            Objects.requireNonNull(str, "Null version");
            this.b = str;
            return this;
        }
    }

    t10(String str, String str2, String str3, i20.d.a.b bVar, String str4, String str5, String str6, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
    }

    @Override // defpackage.i20.d.a
    public String b() {
        return this.f;
    }

    @Override // defpackage.i20.d.a
    public String c() {
        return this.g;
    }

    @Override // defpackage.i20.d.a
    public String d() {
        return this.c;
    }

    @Override // defpackage.i20.d.a
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        String str;
        i20.d.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.a)) {
            return false;
        }
        i20.d.a aVar = (i20.d.a) obj;
        if (this.a.equals(aVar.e()) && this.b.equals(aVar.h()) && ((str = this.c) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.d) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.e) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.f) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.g;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.i20.d.a
    public String f() {
        return this.e;
    }

    @Override // defpackage.i20.d.a
    public i20.d.a.b g() {
        return this.d;
    }

    @Override // defpackage.i20.d.a
    public String h() {
        return this.b;
    }

    public int hashCode() {
        int hashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int i = 0;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        i20.d.a.b bVar = this.d;
        int hashCode3 = (hashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.e;
        int hashCode4 = (hashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f;
        int hashCode5 = (hashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return hashCode5 ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("Application{identifier=");
        q.append(this.a);
        q.append(", version=");
        q.append(this.b);
        q.append(", displayVersion=");
        q.append(this.c);
        q.append(", organization=");
        q.append(this.d);
        q.append(", installationUuid=");
        q.append(this.e);
        q.append(", developmentPlatform=");
        q.append(this.f);
        q.append(", developmentPlatformVersion=");
        return ic.l(q, this.g, "}");
    }
}
