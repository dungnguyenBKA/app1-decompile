package defpackage;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* renamed from: j80  reason: default package */
public final class j80 extends c90 {
    private static final Writer p = new a();
    private static final u60 q = new u60("closed");
    private final List<p60> m = new ArrayList();
    private String n;
    private p60 o = r60.a;

    /* renamed from: j80$a */
    class a extends Writer {
        a() {
        }

        @Override // java.io.Closeable, java.io.Writer, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public j80() {
        super(p);
    }

    private p60 D0() {
        List<p60> list = this.m;
        return list.get(list.size() - 1);
    }

    private void E0(p60 p60) {
        if (this.n != null) {
            if (!(p60 instanceof r60) || i0()) {
                ((s60) D0()).i(this.n, p60);
            }
            this.n = null;
        } else if (this.m.isEmpty()) {
            this.o = p60;
        } else {
            p60 D0 = D0();
            if (D0 instanceof m60) {
                ((m60) D0).i(p60);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // defpackage.c90
    public c90 A0(boolean z) {
        E0(new u60(Boolean.valueOf(z)));
        return this;
    }

    public p60 C0() {
        if (this.m.isEmpty()) {
            return this.o;
        }
        StringBuilder q2 = ic.q("Expected one JSON element but was ");
        q2.append(this.m);
        throw new IllegalStateException(q2.toString());
    }

    @Override // defpackage.c90
    public c90 L() {
        s60 s60 = new s60();
        E0(s60);
        this.m.add(s60);
        return this;
    }

    @Override // defpackage.c90
    public c90 V() {
        if (this.m.isEmpty() || this.n != null) {
            throw new IllegalStateException();
        } else if (D0() instanceof m60) {
            List<p60> list = this.m;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // defpackage.c90
    public c90 b0() {
        if (this.m.isEmpty() || this.n != null) {
            throw new IllegalStateException();
        } else if (D0() instanceof s60) {
            List<p60> list = this.m;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // java.io.Closeable, defpackage.c90, java.lang.AutoCloseable
    public void close() {
        if (this.m.isEmpty()) {
            this.m.add(q);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // defpackage.c90, java.io.Flushable
    public void flush() {
    }

    @Override // defpackage.c90
    public c90 l0(String str) {
        if (this.m.isEmpty() || this.n != null) {
            throw new IllegalStateException();
        } else if (D0() instanceof s60) {
            this.n = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // defpackage.c90
    public c90 n0() {
        E0(r60.a);
        return this;
    }

    @Override // defpackage.c90
    public c90 o() {
        m60 m60 = new m60();
        E0(m60);
        this.m.add(m60);
        return this;
    }

    @Override // defpackage.c90
    public c90 w0(long j) {
        E0(new u60(Long.valueOf(j)));
        return this;
    }

    @Override // defpackage.c90
    public c90 x0(Boolean bool) {
        if (bool == null) {
            E0(r60.a);
            return this;
        }
        E0(new u60(bool));
        return this;
    }

    @Override // defpackage.c90
    public c90 y0(Number number) {
        if (number == null) {
            E0(r60.a);
            return this;
        }
        if (!k0()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        E0(new u60(number));
        return this;
    }

    @Override // defpackage.c90
    public c90 z0(String str) {
        if (str == null) {
            E0(r60.a);
            return this;
        }
        E0(new u60(str));
        return this;
    }
}
