package defpackage;

import defpackage.it;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: at  reason: default package */
final class at extends it {
    private final String a;
    private final byte[] b;
    private final yr c;

    /* access modifiers changed from: package-private */
    /* renamed from: at$b */
    public static final class b extends it.a {
        private String a;
        private byte[] b;
        private yr c;

        b() {
        }

        @Override // defpackage.it.a
        public it a() {
            String str = this.a == null ? " backendName" : "";
            if (this.c == null) {
                str = ic.i(str, " priority");
            }
            if (str.isEmpty()) {
                return new at(this.a, this.b, this.c, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.it.a
        public it.a b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.a = str;
            return this;
        }

        @Override // defpackage.it.a
        public it.a c(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        @Override // defpackage.it.a
        public it.a d(yr yrVar) {
            Objects.requireNonNull(yrVar, "Null priority");
            this.c = yrVar;
            return this;
        }
    }

    at(String str, byte[] bArr, yr yrVar, a aVar) {
        this.a = str;
        this.b = bArr;
        this.c = yrVar;
    }

    @Override // defpackage.it
    public String b() {
        return this.a;
    }

    @Override // defpackage.it
    public byte[] c() {
        return this.b;
    }

    @Override // defpackage.it
    public yr d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof it)) {
            return false;
        }
        it itVar = (it) obj;
        if (this.a.equals(itVar.b())) {
            if (!Arrays.equals(this.b, itVar instanceof at ? ((at) itVar).b : itVar.c()) || !this.c.equals(itVar.d())) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003) ^ this.c.hashCode();
    }
}
