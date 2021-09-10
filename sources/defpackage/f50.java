package defpackage;

import defpackage.h50;
import defpackage.i50;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: f50  reason: default package */
public final class f50 extends i50 {
    private final String b;
    private final h50.a c;
    private final String d;
    private final String e;
    private final long f;
    private final long g;
    private final String h;

    /* access modifiers changed from: package-private */
    /* renamed from: f50$b */
    public static final class b extends i50.a {
        private String a;
        private h50.a b;
        private String c;
        private String d;
        private Long e;
        private Long f;
        private String g;

        b() {
        }

        @Override // defpackage.i50.a
        public i50 a() {
            String str = this.b == null ? " registrationStatus" : "";
            if (this.e == null) {
                str = ic.i(str, " expiresInSecs");
            }
            if (this.f == null) {
                str = ic.i(str, " tokenCreationEpochInSecs");
            }
            if (str.isEmpty()) {
                return new f50(this.a, this.b, this.c, this.d, this.e.longValue(), this.f.longValue(), this.g, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i50.a
        public i50.a b(String str) {
            this.c = str;
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a c(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a d(String str) {
            this.a = str;
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a e(String str) {
            this.g = str;
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a f(String str) {
            this.d = str;
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a g(h50.a aVar) {
            Objects.requireNonNull(aVar, "Null registrationStatus");
            this.b = aVar;
            return this;
        }

        @Override // defpackage.i50.a
        public i50.a h(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        b(i50 i50, a aVar) {
            this.a = i50.c();
            this.b = i50.f();
            this.c = i50.a();
            this.d = i50.e();
            this.e = Long.valueOf(i50.b());
            this.f = Long.valueOf(i50.g());
            this.g = i50.d();
        }
    }

    f50(String str, h50.a aVar, String str2, String str3, long j, long j2, String str4, a aVar2) {
        this.b = str;
        this.c = aVar;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }

    @Override // defpackage.i50
    public String a() {
        return this.d;
    }

    @Override // defpackage.i50
    public long b() {
        return this.f;
    }

    @Override // defpackage.i50
    public String c() {
        return this.b;
    }

    @Override // defpackage.i50
    public String d() {
        return this.h;
    }

    @Override // defpackage.i50
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i50)) {
            return false;
        }
        i50 i50 = (i50) obj;
        String str3 = this.b;
        if (str3 != null ? str3.equals(i50.c()) : i50.c() == null) {
            if (this.c.equals(i50.f()) && ((str = this.d) != null ? str.equals(i50.a()) : i50.a() == null) && ((str2 = this.e) != null ? str2.equals(i50.e()) : i50.e() == null) && this.f == i50.b() && this.g == i50.g()) {
                String str4 = this.h;
                if (str4 == null) {
                    if (i50.d() == null) {
                        return true;
                    }
                } else if (str4.equals(i50.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.i50
    public h50.a f() {
        return this.c;
    }

    @Override // defpackage.i50
    public long g() {
        return this.g;
    }

    public int hashCode() {
        String str = this.b;
        int i = 0;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.e;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        long j = this.f;
        long j2 = this.g;
        int i2 = (((((hashCode2 ^ hashCode3) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return i2 ^ i;
    }

    @Override // defpackage.i50
    public i50.a k() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder q = ic.q("PersistedInstallationEntry{firebaseInstallationId=");
        q.append(this.b);
        q.append(", registrationStatus=");
        q.append(this.c);
        q.append(", authToken=");
        q.append(this.d);
        q.append(", refreshToken=");
        q.append(this.e);
        q.append(", expiresInSecs=");
        q.append(this.f);
        q.append(", tokenCreationEpochInSecs=");
        q.append(this.g);
        q.append(", fisError=");
        return ic.l(q, this.h, "}");
    }
}
