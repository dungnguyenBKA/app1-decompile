package defpackage;

import defpackage.us;
import java.util.List;

/* access modifiers changed from: package-private */
/* renamed from: os  reason: default package */
public final class os extends us {
    private final long a;
    private final long b;
    private final ss c;
    private final Integer d;
    private final String e;
    private final List<ts> f;
    private final xs g;

    /* access modifiers changed from: package-private */
    /* renamed from: os$b */
    public static final class b extends us.a {
        private Long a;
        private Long b;
        private ss c;
        private Integer d;
        private String e;
        private List<ts> f;
        private xs g;

        b() {
        }

        @Override // defpackage.us.a
        public us a() {
            String str = this.a == null ? " requestTimeMs" : "";
            if (this.b == null) {
                str = ic.i(str, " requestUptimeMs");
            }
            if (str.isEmpty()) {
                return new os(this.a.longValue(), this.b.longValue(), this.c, this.d, this.e, this.f, this.g, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.us.a
        public us.a b(ss ssVar) {
            this.c = ssVar;
            return this;
        }

        @Override // defpackage.us.a
        public us.a c(List<ts> list) {
            this.f = list;
            return this;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.us.a
        public us.a d(Integer num) {
            this.d = num;
            return this;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.us.a
        public us.a e(String str) {
            this.e = str;
            return this;
        }

        @Override // defpackage.us.a
        public us.a f(xs xsVar) {
            this.g = xsVar;
            return this;
        }

        @Override // defpackage.us.a
        public us.a g(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.us.a
        public us.a h(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    os(long j, long j2, ss ssVar, Integer num, String str, List list, xs xsVar, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = ssVar;
        this.d = num;
        this.e = str;
        this.f = list;
        this.g = xsVar;
    }

    @Override // defpackage.us
    public ss b() {
        return this.c;
    }

    @Override // defpackage.us
    public List<ts> c() {
        return this.f;
    }

    @Override // defpackage.us
    public Integer d() {
        return this.d;
    }

    @Override // defpackage.us
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        ss ssVar;
        Integer num;
        String str;
        List<ts> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof us)) {
            return false;
        }
        us usVar = (us) obj;
        if (this.a == usVar.g() && this.b == usVar.h() && ((ssVar = this.c) != null ? ssVar.equals(usVar.b()) : usVar.b() == null) && ((num = this.d) != null ? num.equals(usVar.d()) : usVar.d() == null) && ((str = this.e) != null ? str.equals(usVar.e()) : usVar.e() == null) && ((list = this.f) != null ? list.equals(usVar.c()) : usVar.c() == null)) {
            xs xsVar = this.g;
            if (xsVar == null) {
                if (usVar.f() == null) {
                    return true;
                }
            } else if (xsVar.equals(usVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.us
    public xs f() {
        return this.g;
    }

    @Override // defpackage.us
    public long g() {
        return this.a;
    }

    @Override // defpackage.us
    public long h() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        ss ssVar = this.c;
        int i2 = 0;
        int hashCode = (i ^ (ssVar == null ? 0 : ssVar.hashCode())) * 1000003;
        Integer num = this.d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<ts> list = this.f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        xs xsVar = this.g;
        if (xsVar != null) {
            i2 = xsVar.hashCode();
        }
        return hashCode4 ^ i2;
    }

    public String toString() {
        StringBuilder q = ic.q("LogRequest{requestTimeMs=");
        q.append(this.a);
        q.append(", requestUptimeMs=");
        q.append(this.b);
        q.append(", clientInfo=");
        q.append(this.c);
        q.append(", logSource=");
        q.append(this.d);
        q.append(", logSourceName=");
        q.append(this.e);
        q.append(", logEvents=");
        q.append(this.f);
        q.append(", qosTier=");
        q.append(this.g);
        q.append("}");
        return q.toString();
    }
}
