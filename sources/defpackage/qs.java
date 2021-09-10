package defpackage;

import defpackage.ws;

/* access modifiers changed from: package-private */
/* renamed from: qs  reason: default package */
public final class qs extends ws {
    private final ws.c a;
    private final ws.b b;

    /* access modifiers changed from: package-private */
    /* renamed from: qs$b */
    public static final class b extends ws.a {
        private ws.c a;
        private ws.b b;

        b() {
        }

        @Override // defpackage.ws.a
        public ws a() {
            return new qs(this.a, this.b, null);
        }

        @Override // defpackage.ws.a
        public ws.a b(ws.b bVar) {
            this.b = bVar;
            return this;
        }

        @Override // defpackage.ws.a
        public ws.a c(ws.c cVar) {
            this.a = cVar;
            return this;
        }
    }

    qs(ws.c cVar, ws.b bVar, a aVar) {
        this.a = cVar;
        this.b = bVar;
    }

    @Override // defpackage.ws
    public ws.b b() {
        return this.b;
    }

    @Override // defpackage.ws
    public ws.c c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ws)) {
            return false;
        }
        ws wsVar = (ws) obj;
        ws.c cVar = this.a;
        if (cVar != null ? cVar.equals(wsVar.c()) : wsVar.c() == null) {
            ws.b bVar = this.b;
            if (bVar == null) {
                if (wsVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(wsVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ws.c cVar = this.a;
        int i = 0;
        int hashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        ws.b bVar = this.b;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("NetworkConnectionInfo{networkType=");
        q.append(this.a);
        q.append(", mobileSubtype=");
        q.append(this.b);
        q.append("}");
        return q.toString();
    }
}
