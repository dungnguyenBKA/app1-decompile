package defpackage;

import defpackage.i20;
import java.util.Arrays;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: r10  reason: default package */
public final class r10 extends i20.c.b {
    private final String a;
    private final byte[] b;

    /* access modifiers changed from: package-private */
    /* renamed from: r10$b */
    public static final class b extends i20.c.b.a {
        private String a;
        private byte[] b;

        b() {
        }

        @Override // defpackage.i20.c.b.a
        public i20.c.b a() {
            String str = this.a == null ? " filename" : "";
            if (this.b == null) {
                str = ic.i(str, " contents");
            }
            if (str.isEmpty()) {
                return new r10(this.a, this.b, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.c.b.a
        public i20.c.b.a b(byte[] bArr) {
            Objects.requireNonNull(bArr, "Null contents");
            this.b = bArr;
            return this;
        }

        @Override // defpackage.i20.c.b.a
        public i20.c.b.a c(String str) {
            Objects.requireNonNull(str, "Null filename");
            this.a = str;
            return this;
        }
    }

    r10(String str, byte[] bArr, a aVar) {
        this.a = str;
        this.b = bArr;
    }

    @Override // defpackage.i20.c.b
    public byte[] b() {
        return this.b;
    }

    @Override // defpackage.i20.c.b
    public String c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.c.b)) {
            return false;
        }
        i20.c.b bVar = (i20.c.b) obj;
        if (this.a.equals(bVar.c())) {
            if (Arrays.equals(this.b, bVar instanceof r10 ? ((r10) bVar).b : bVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder q = ic.q("File{filename=");
        q.append(this.a);
        q.append(", contents=");
        q.append(Arrays.toString(this.b));
        q.append("}");
        return q.toString();
    }
}
