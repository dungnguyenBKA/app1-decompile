package defpackage;

import defpackage.ts;
import java.util.Arrays;

/* access modifiers changed from: package-private */
/* renamed from: ns  reason: default package */
public final class ns extends ts {
    private final long a;
    private final Integer b;
    private final long c;
    private final byte[] d;
    private final String e;
    private final long f;
    private final ws g;

    /* access modifiers changed from: package-private */
    /* renamed from: ns$b */
    public static final class b extends ts.a {
        private Long a;
        private Integer b;
        private Long c;
        private byte[] d;
        private String e;
        private Long f;
        private ws g;

        b() {
        }

        @Override // defpackage.ts.a
        public ts a() {
            String str = this.a == null ? " eventTimeMs" : "";
            if (this.c == null) {
                str = ic.i(str, " eventUptimeMs");
            }
            if (this.f == null) {
                str = ic.i(str, " timezoneOffsetSeconds");
            }
            if (str.isEmpty()) {
                return new ns(this.a.longValue(), this.b, this.c.longValue(), this.d, this.e, this.f.longValue(), this.g, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.ts.a
        public ts.a b(Integer num) {
            this.b = num;
            return this;
        }

        @Override // defpackage.ts.a
        public ts.a c(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.ts.a
        public ts.a d(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.ts.a
        public ts.a e(ws wsVar) {
            this.g = wsVar;
            return this;
        }

        @Override // defpackage.ts.a
        public ts.a f(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        /* access modifiers changed from: package-private */
        public ts.a g(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        /* access modifiers changed from: package-private */
        public ts.a h(String str) {
            this.e = str;
            return this;
        }
    }

    ns(long j, Integer num, long j2, byte[] bArr, String str, long j3, ws wsVar, a aVar) {
        this.a = j;
        this.b = num;
        this.c = j2;
        this.d = bArr;
        this.e = str;
        this.f = j3;
        this.g = wsVar;
    }

    @Override // defpackage.ts
    public Integer a() {
        return this.b;
    }

    @Override // defpackage.ts
    public long b() {
        return this.a;
    }

    @Override // defpackage.ts
    public long c() {
        return this.c;
    }

    @Override // defpackage.ts
    public ws d() {
        return this.g;
    }

    @Override // defpackage.ts
    public byte[] e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ts)) {
            return false;
        }
        ts tsVar = (ts) obj;
        if (this.a == tsVar.b() && ((num = this.b) != null ? num.equals(tsVar.a()) : tsVar.a() == null) && this.c == tsVar.c()) {
            if (Arrays.equals(this.d, tsVar instanceof ns ? ((ns) tsVar).d : tsVar.e()) && ((str = this.e) != null ? str.equals(tsVar.f()) : tsVar.f() == null) && this.f == tsVar.g()) {
                ws wsVar = this.g;
                if (wsVar == null) {
                    if (tsVar.d() == null) {
                        return true;
                    }
                } else if (wsVar.equals(tsVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.ts
    public String f() {
        return this.e;
    }

    @Override // defpackage.ts
    public long g() {
        return this.f;
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.c;
        int hashCode2 = (((((i ^ hashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f;
        int i3 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        ws wsVar = this.g;
        if (wsVar != null) {
            i2 = wsVar.hashCode();
        }
        return i3 ^ i2;
    }

    public String toString() {
        StringBuilder q = ic.q("LogEvent{eventTimeMs=");
        q.append(this.a);
        q.append(", eventCode=");
        q.append(this.b);
        q.append(", eventUptimeMs=");
        q.append(this.c);
        q.append(", sourceExtension=");
        q.append(Arrays.toString(this.d));
        q.append(", sourceExtensionJsonProto3=");
        q.append(this.e);
        q.append(", timezoneOffsetSeconds=");
        q.append(this.f);
        q.append(", networkConnectionInfo=");
        q.append(this.g);
        q.append("}");
        return q.toString();
    }
}
