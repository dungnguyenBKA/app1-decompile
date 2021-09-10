package defpackage;

import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* renamed from: i80  reason: default package */
public final class i80 extends a90 {
    private static final Reader v = new a();
    private static final Object w = new Object();
    private Object[] r = new Object[32];
    private int s = 0;
    private String[] t = new String[32];
    private int[] u = new int[32];

    /* renamed from: i80$a */
    class a extends Reader {
        a() {
        }

        @Override // java.io.Closeable, java.io.Reader, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public i80(p60 p60) {
        super(v);
        J0(p60);
    }

    private void F0(b90 b90) {
        if (x0() != b90) {
            throw new IllegalStateException("Expected " + b90 + " but was " + x0() + m0());
        }
    }

    private Object G0() {
        return this.r[this.s - 1];
    }

    private Object H0() {
        Object[] objArr = this.r;
        int i = this.s - 1;
        this.s = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private void J0(Object obj) {
        int i = this.s;
        Object[] objArr = this.r;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.r = Arrays.copyOf(objArr, i2);
            this.u = Arrays.copyOf(this.u, i2);
            this.t = (String[]) Arrays.copyOf(this.t, i2);
        }
        Object[] objArr2 = this.r;
        int i3 = this.s;
        this.s = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // defpackage.a90
    private String m0() {
        StringBuilder q = ic.q(" at path ");
        q.append(getPath());
        return q.toString();
    }

    @Override // defpackage.a90
    public void D0() {
        if (x0() == b90.NAME) {
            r0();
            this.t[this.s - 2] = "null";
        } else {
            H0();
            int i = this.s;
            if (i > 0) {
                this.t[i - 1] = "null";
            }
        }
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public void I0() {
        F0(b90.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) G0()).next();
        J0(entry.getValue());
        J0(new u60((String) entry.getKey()));
    }

    @Override // defpackage.a90
    public void V() {
        F0(b90.END_ARRAY);
        H0();
        H0();
        int i = this.s;
        if (i > 0) {
            int[] iArr = this.u;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.a90
    public void b0() {
        F0(b90.END_OBJECT);
        H0();
        H0();
        int i = this.s;
        if (i > 0) {
            int[] iArr = this.u;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // java.io.Closeable, defpackage.a90, java.lang.AutoCloseable
    public void close() {
        this.r = new Object[]{w};
        this.s = 1;
    }

    @Override // defpackage.a90
    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (i < this.s) {
            Object[] objArr = this.r;
            if (objArr[i] instanceof m60) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.u[i]);
                    sb.append(']');
                }
            } else if (objArr[i] instanceof s60) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.t;
                    if (strArr[i] != null) {
                        sb.append(strArr[i]);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // defpackage.a90
    public void j() {
        F0(b90.BEGIN_ARRAY);
        J0(((m60) G0()).iterator());
        this.u[this.s - 1] = 0;
    }

    @Override // defpackage.a90
    public boolean j0() {
        b90 x0 = x0();
        return (x0 == b90.END_OBJECT || x0 == b90.END_ARRAY) ? false : true;
    }

    @Override // defpackage.a90
    public boolean n0() {
        F0(b90.BOOLEAN);
        boolean a2 = ((u60) H0()).a();
        int i = this.s;
        if (i > 0) {
            int[] iArr = this.u;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return a2;
    }

    @Override // defpackage.a90
    public void o() {
        F0(b90.BEGIN_OBJECT);
        J0(((s60) G0()).m().iterator());
    }

    @Override // defpackage.a90
    public double o0() {
        b90 x0 = x0();
        b90 b90 = b90.NUMBER;
        if (x0 == b90 || x0 == b90.STRING) {
            double b = ((u60) G0()).b();
            if (k0() || (!Double.isNaN(b) && !Double.isInfinite(b))) {
                H0();
                int i = this.s;
                if (i > 0) {
                    int[] iArr = this.u;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return b;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + b);
        }
        throw new IllegalStateException("Expected " + b90 + " but was " + x0 + m0());
    }

    @Override // defpackage.a90
    public int p0() {
        b90 x0 = x0();
        b90 b90 = b90.NUMBER;
        if (x0 == b90 || x0 == b90.STRING) {
            int d = ((u60) G0()).d();
            H0();
            int i = this.s;
            if (i > 0) {
                int[] iArr = this.u;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return d;
        }
        throw new IllegalStateException("Expected " + b90 + " but was " + x0 + m0());
    }

    @Override // defpackage.a90
    public long q0() {
        b90 x0 = x0();
        b90 b90 = b90.NUMBER;
        if (x0 == b90 || x0 == b90.STRING) {
            long g = ((u60) G0()).g();
            H0();
            int i = this.s;
            if (i > 0) {
                int[] iArr = this.u;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return g;
        }
        throw new IllegalStateException("Expected " + b90 + " but was " + x0 + m0());
    }

    @Override // defpackage.a90
    public String r0() {
        F0(b90.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) G0()).next();
        String str = (String) entry.getKey();
        this.t[this.s - 1] = str;
        J0(entry.getValue());
        return str;
    }

    @Override // defpackage.a90
    public void t0() {
        F0(b90.NULL);
        H0();
        int i = this.s;
        if (i > 0) {
            int[] iArr = this.u;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.a90
    public String toString() {
        return i80.class.getSimpleName();
    }

    @Override // defpackage.a90
    public String v0() {
        b90 x0 = x0();
        b90 b90 = b90.STRING;
        if (x0 == b90 || x0 == b90.NUMBER) {
            String h = ((u60) H0()).h();
            int i = this.s;
            if (i > 0) {
                int[] iArr = this.u;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return h;
        }
        throw new IllegalStateException("Expected " + b90 + " but was " + x0 + m0());
    }

    @Override // defpackage.a90
    public b90 x0() {
        if (this.s == 0) {
            return b90.END_DOCUMENT;
        }
        Object G0 = G0();
        if (G0 instanceof Iterator) {
            boolean z = this.r[this.s - 2] instanceof s60;
            Iterator it = (Iterator) G0;
            if (!it.hasNext()) {
                return z ? b90.END_OBJECT : b90.END_ARRAY;
            }
            if (z) {
                return b90.NAME;
            }
            J0(it.next());
            return x0();
        } else if (G0 instanceof s60) {
            return b90.BEGIN_OBJECT;
        } else {
            if (G0 instanceof m60) {
                return b90.BEGIN_ARRAY;
            }
            if (G0 instanceof u60) {
                u60 u60 = (u60) G0;
                if (u60.m()) {
                    return b90.STRING;
                }
                if (u60.j()) {
                    return b90.BOOLEAN;
                }
                if (u60.l()) {
                    return b90.NUMBER;
                }
                throw new AssertionError();
            } else if (G0 instanceof r60) {
                return b90.NULL;
            } else {
                if (G0 == w) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }
}
