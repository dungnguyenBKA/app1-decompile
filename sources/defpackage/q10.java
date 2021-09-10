package defpackage;

import defpackage.i20;

/* access modifiers changed from: package-private */
/* renamed from: q10  reason: default package */
public final class q10 extends i20.c {
    private final j20<i20.c.b> a;
    private final String b;

    /* access modifiers changed from: package-private */
    /* renamed from: q10$b */
    public static final class b extends i20.c.a {
        private j20<i20.c.b> a;
        private String b;

        b() {
        }

        @Override // defpackage.i20.c.a
        public i20.c a() {
            String str = this.a == null ? " files" : "";
            if (str.isEmpty()) {
                return new q10(this.a, this.b, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.c.a
        public i20.c.a b(j20<i20.c.b> j20) {
            this.a = j20;
            return this;
        }

        @Override // defpackage.i20.c.a
        public i20.c.a c(String str) {
            this.b = str;
            return this;
        }
    }

    q10(j20 j20, String str, a aVar) {
        this.a = j20;
        this.b = str;
    }

    @Override // defpackage.i20.c
    public j20<i20.c.b> b() {
        return this.a;
    }

    @Override // defpackage.i20.c
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.c)) {
            return false;
        }
        i20.c cVar = (i20.c) obj;
        if (this.a.equals(cVar.b())) {
            String str = this.b;
            if (str == null) {
                if (cVar.c() == null) {
                    return true;
                }
            } else if (str.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        String str = this.b;
        return hashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder q = ic.q("FilesPayload{files=");
        q.append(this.a);
        q.append(", orgId=");
        return ic.l(q, this.b, "}");
    }
}
