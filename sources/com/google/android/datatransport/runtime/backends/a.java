package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.f;
import java.util.Arrays;

final class a extends f {
    private final Iterable<et> a;
    private final byte[] b;

    /* access modifiers changed from: package-private */
    public static final class b extends f.a {
        private Iterable<et> a;
        private byte[] b;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public f a() {
            String str = this.a == null ? " events" : "";
            if (str.isEmpty()) {
                return new a(this.a, this.b, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public f.a b(Iterable<et> iterable) {
            this.a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public f.a c(byte[] bArr) {
            this.b = bArr;
            return this;
        }
    }

    a(Iterable iterable, byte[] bArr, C0044a aVar) {
        this.a = iterable;
        this.b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.f
    public Iterable<et> b() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.f
    public byte[] c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.a.equals(fVar.b())) {
            if (Arrays.equals(this.b, fVar instanceof a ? ((a) fVar).b : fVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder q = ic.q("BackendRequest{events=");
        q.append(this.a);
        q.append(", extras=");
        q.append(Arrays.toString(this.b));
        q.append("}");
        return q.toString();
    }
}
