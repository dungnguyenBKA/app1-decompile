package defpackage;

import defpackage.ss;

/* access modifiers changed from: package-private */
/* renamed from: ms  reason: default package */
public final class ms extends ss {
    private final ss.b a;
    private final ds b;

    /* access modifiers changed from: package-private */
    /* renamed from: ms$b */
    public static final class b extends ss.a {
        private ss.b a;
        private ds b;

        b() {
        }

        @Override // defpackage.ss.a
        public ss a() {
            return new ms(this.a, this.b, null);
        }

        @Override // defpackage.ss.a
        public ss.a b(ds dsVar) {
            this.b = dsVar;
            return this;
        }

        @Override // defpackage.ss.a
        public ss.a c(ss.b bVar) {
            this.a = bVar;
            return this;
        }
    }

    ms(ss.b bVar, ds dsVar, a aVar) {
        this.a = bVar;
        this.b = dsVar;
    }

    @Override // defpackage.ss
    public ds b() {
        return this.b;
    }

    @Override // defpackage.ss
    public ss.b c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ss)) {
            return false;
        }
        ss ssVar = (ss) obj;
        ss.b bVar = this.a;
        if (bVar != null ? bVar.equals(ssVar.c()) : ssVar.c() == null) {
            ds dsVar = this.b;
            if (dsVar == null) {
                if (ssVar.b() == null) {
                    return true;
                }
            } else if (dsVar.equals(ssVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ss.b bVar = this.a;
        int i = 0;
        int hashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        ds dsVar = this.b;
        if (dsVar != null) {
            i = dsVar.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("ClientInfo{clientType=");
        q.append(this.a);
        q.append(", androidClientInfo=");
        q.append(this.b);
        q.append("}");
        return q.toString();
    }
}
