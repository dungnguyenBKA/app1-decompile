package defpackage;

/* renamed from: b0  reason: default package */
public class b0<E> implements Cloneable {
    private static final Object f = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    public b0() {
        this(10);
    }

    private void f() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void a(long j, E e2) {
        int i = this.e;
        if (i == 0 || j > this.c[i - 1]) {
            if (this.b && i >= this.c.length) {
                f();
            }
            int i2 = this.e;
            if (i2 >= this.c.length) {
                int f2 = a0.f(i2 + 1);
                long[] jArr = new long[f2];
                Object[] objArr = new Object[f2];
                long[] jArr2 = this.c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.c = jArr;
                this.d = objArr;
            }
            this.c[i2] = j;
            this.d[i2] = e2;
            this.e = i2 + 1;
            return;
        }
        k(j, e2);
    }

    public void b() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    /* renamed from: c */
    public b0<E> clone() {
        try {
            b0<E> b0Var = (b0) super.clone();
            b0Var.c = (long[]) this.c.clone();
            b0Var.d = (Object[]) this.d.clone();
            return b0Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public boolean d(long j) {
        if (this.b) {
            f();
        }
        return a0.b(this.c, this.e, j) >= 0;
    }

    @Deprecated
    public void e(long j) {
        Object[] objArr;
        Object obj;
        int b2 = a0.b(this.c, this.e, j);
        if (b2 >= 0 && (objArr = this.d)[b2] != (obj = f)) {
            objArr[b2] = obj;
            this.b = true;
        }
    }

    public E g(long j) {
        return h(j, null);
    }

    public E h(long j, E e2) {
        int b2 = a0.b(this.c, this.e, j);
        if (b2 >= 0) {
            Object[] objArr = this.d;
            if (objArr[b2] != f) {
                return (E) objArr[b2];
            }
        }
        return e2;
    }

    public int i(long j) {
        if (this.b) {
            f();
        }
        return a0.b(this.c, this.e, j);
    }

    public long j(int i) {
        if (this.b) {
            f();
        }
        return this.c[i];
    }

    public void k(long j, E e2) {
        int b2 = a0.b(this.c, this.e, j);
        if (b2 >= 0) {
            this.d[b2] = e2;
            return;
        }
        int i = b2 ^ -1;
        int i2 = this.e;
        if (i < i2) {
            Object[] objArr = this.d;
            if (objArr[i] == f) {
                this.c[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.b && i2 >= this.c.length) {
            f();
            i = a0.b(this.c, this.e, j) ^ -1;
        }
        int i3 = this.e;
        if (i3 >= this.c.length) {
            int f2 = a0.f(i3 + 1);
            long[] jArr = new long[f2];
            Object[] objArr2 = new Object[f2];
            long[] jArr2 = this.c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = jArr;
            this.d = objArr2;
        }
        int i4 = this.e;
        if (i4 - i != 0) {
            long[] jArr3 = this.c;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.d;
            System.arraycopy(objArr4, i, objArr4, i5, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = e2;
        this.e++;
    }

    public void l(int i) {
        Object[] objArr = this.d;
        Object obj = objArr[i];
        Object obj2 = f;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.b = true;
        }
    }

    public int m() {
        if (this.b) {
            f();
        }
        return this.e;
    }

    public E n(int i) {
        if (this.b) {
            f();
        }
        return (E) this.d[i];
    }

    public String toString() {
        if (m() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(j(i));
            sb.append('=');
            E n = n(i);
            if (n != this) {
                sb.append((Object) n);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b0(int i) {
        this.b = false;
        if (i == 0) {
            this.c = a0.b;
            this.d = a0.c;
            return;
        }
        int f2 = a0.f(i);
        this.c = new long[f2];
        this.d = new Object[f2];
    }
}
