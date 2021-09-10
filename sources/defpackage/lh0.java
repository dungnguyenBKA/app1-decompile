package defpackage;

import defpackage.ch0;
import java.io.Closeable;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: lh0  reason: default package */
public final class lh0 implements Closeable {
    final jh0 b;
    final hh0 c;
    final int d;
    final String e;
    @Nullable
    final bh0 f;
    final ch0 g;
    @Nullable
    final mh0 h;
    @Nullable
    final lh0 i;
    @Nullable
    final lh0 j;
    @Nullable
    final lh0 k;
    final long l;
    final long m;
    @Nullable
    private volatile ng0 n;

    lh0(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.e = aVar.d;
        this.f = aVar.e;
        this.g = new ch0(aVar.f);
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
    }

    public int L() {
        return this.d;
    }

    @Nullable
    public bh0 S() {
        return this.f;
    }

    @Nullable
    public String V(String str) {
        String c2 = this.g.c(str);
        if (c2 != null) {
            return c2;
        }
        return null;
    }

    public ch0 b0() {
        return this.g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        mh0 mh0 = this.h;
        if (mh0 != null) {
            mh0.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    public boolean i0() {
        int i2 = this.d;
        return i2 >= 200 && i2 < 300;
    }

    @Nullable
    public mh0 j() {
        return this.h;
    }

    public String j0() {
        return this.e;
    }

    public a k0() {
        return new a(this);
    }

    @Nullable
    public lh0 l0() {
        return this.k;
    }

    public long m0() {
        return this.m;
    }

    public jh0 n0() {
        return this.b;
    }

    public ng0 o() {
        ng0 ng0 = this.n;
        if (ng0 != null) {
            return ng0;
        }
        ng0 j2 = ng0.j(this.g);
        this.n = j2;
        return j2;
    }

    public long o0() {
        return this.l;
    }

    public String toString() {
        StringBuilder q = ic.q("Response{protocol=");
        q.append(this.c);
        q.append(", code=");
        q.append(this.d);
        q.append(", message=");
        q.append(this.e);
        q.append(", url=");
        q.append(this.b.a);
        q.append('}');
        return q.toString();
    }

    /* renamed from: lh0$a */
    public static class a {
        @Nullable
        jh0 a;
        @Nullable
        hh0 b;
        int c;
        String d;
        @Nullable
        bh0 e;
        ch0.a f;
        @Nullable
        mh0 g;
        @Nullable
        lh0 h;
        @Nullable
        lh0 i;
        @Nullable
        lh0 j;
        long k;
        long l;

        public a() {
            this.c = -1;
            this.f = new ch0.a();
        }

        private void e(String str, lh0 lh0) {
            if (lh0.h != null) {
                throw new IllegalArgumentException(ic.i(str, ".body != null"));
            } else if (lh0.i != null) {
                throw new IllegalArgumentException(ic.i(str, ".networkResponse != null"));
            } else if (lh0.j != null) {
                throw new IllegalArgumentException(ic.i(str, ".cacheResponse != null"));
            } else if (lh0.k != null) {
                throw new IllegalArgumentException(ic.i(str, ".priorResponse != null"));
            }
        }

        public a a(String str, String str2) {
            ch0.a aVar = this.f;
            Objects.requireNonNull(aVar);
            ch0.a(str);
            ch0.b(str2, str);
            aVar.a.add(str);
            aVar.a.add(str2.trim());
            return this;
        }

        public a b(@Nullable mh0 mh0) {
            this.g = mh0;
            return this;
        }

        public lh0 c() {
            if (this.a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.c < 0) {
                StringBuilder q = ic.q("code < 0: ");
                q.append(this.c);
                throw new IllegalStateException(q.toString());
            } else if (this.d != null) {
                return new lh0(this);
            } else {
                throw new IllegalStateException("message == null");
            }
        }

        public a d(@Nullable lh0 lh0) {
            if (lh0 != null) {
                e("cacheResponse", lh0);
            }
            this.i = lh0;
            return this;
        }

        public a f(int i2) {
            this.c = i2;
            return this;
        }

        public a g(@Nullable bh0 bh0) {
            this.e = bh0;
            return this;
        }

        public a h(String str, String str2) {
            ch0.a aVar = this.f;
            Objects.requireNonNull(aVar);
            ch0.a(str);
            ch0.b(str2, str);
            aVar.c(str);
            aVar.a.add(str);
            aVar.a.add(str2.trim());
            return this;
        }

        public a i(ch0 ch0) {
            this.f = ch0.e();
            return this;
        }

        public a j(String str) {
            this.d = str;
            return this;
        }

        public a k(@Nullable lh0 lh0) {
            if (lh0 != null) {
                e("networkResponse", lh0);
            }
            this.h = lh0;
            return this;
        }

        public a l(@Nullable lh0 lh0) {
            if (lh0.h == null) {
                this.j = lh0;
                return this;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        public a m(hh0 hh0) {
            this.b = hh0;
            return this;
        }

        public a n(long j2) {
            this.l = j2;
            return this;
        }

        public a o(jh0 jh0) {
            this.a = jh0;
            return this;
        }

        public a p(long j2) {
            this.k = j2;
            return this;
        }

        a(lh0 lh0) {
            this.c = -1;
            this.a = lh0.b;
            this.b = lh0.c;
            this.c = lh0.d;
            this.d = lh0.e;
            this.e = lh0.f;
            this.f = lh0.g.e();
            this.g = lh0.h;
            this.h = lh0.i;
            this.i = lh0.j;
            this.j = lh0.k;
            this.k = lh0.l;
            this.l = lh0.m;
        }
    }
}
