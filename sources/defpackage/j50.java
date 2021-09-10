package defpackage;

import defpackage.m50;

/* access modifiers changed from: package-private */
/* renamed from: j50  reason: default package */
public final class j50 extends m50 {
    private final String a;
    private final String b;
    private final String c;
    private final o50 d;
    private final m50.b e;

    /* access modifiers changed from: package-private */
    /* renamed from: j50$b */
    public static final class b extends m50.a {
        private String a;
        private String b;
        private String c;
        private o50 d;
        private m50.b e;

        b() {
        }

        public m50 a() {
            return new j50(this.a, this.b, this.c, this.d, this.e, null);
        }

        public m50.a b(o50 o50) {
            this.d = o50;
            return this;
        }

        public m50.a c(String str) {
            this.b = str;
            return this;
        }

        public m50.a d(String str) {
            this.c = str;
            return this;
        }

        public m50.a e(m50.b bVar) {
            this.e = bVar;
            return this;
        }

        public m50.a f(String str) {
            this.a = str;
            return this;
        }
    }

    j50(String str, String str2, String str3, o50 o50, m50.b bVar, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = o50;
        this.e = bVar;
    }

    @Override // defpackage.m50
    public o50 a() {
        return this.d;
    }

    @Override // defpackage.m50
    public String b() {
        return this.b;
    }

    @Override // defpackage.m50
    public String c() {
        return this.c;
    }

    @Override // defpackage.m50
    public m50.b d() {
        return this.e;
    }

    @Override // defpackage.m50
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m50)) {
            return false;
        }
        m50 m50 = (m50) obj;
        String str = this.a;
        if (str != null ? str.equals(m50.e()) : m50.e() == null) {
            String str2 = this.b;
            if (str2 != null ? str2.equals(m50.b()) : m50.b() == null) {
                String str3 = this.c;
                if (str3 != null ? str3.equals(m50.c()) : m50.c() == null) {
                    o50 o50 = this.d;
                    if (o50 != null ? o50.equals(m50.a()) : m50.a() == null) {
                        m50.b bVar = this.e;
                        if (bVar == null) {
                            if (m50.d() == null) {
                                return true;
                            }
                        } else if (bVar.equals(m50.d())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int i = 0;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        o50 o50 = this.d;
        int hashCode4 = (hashCode3 ^ (o50 == null ? 0 : o50.hashCode())) * 1000003;
        m50.b bVar = this.e;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return hashCode4 ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("InstallationResponse{uri=");
        q.append(this.a);
        q.append(", fid=");
        q.append(this.b);
        q.append(", refreshToken=");
        q.append(this.c);
        q.append(", authToken=");
        q.append(this.d);
        q.append(", responseCode=");
        q.append(this.e);
        q.append("}");
        return q.toString();
    }
}
