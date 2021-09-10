package defpackage;

/* renamed from: f0  reason: default package */
public class f0<E> implements Cloneable {
    private static final Object f = new Object();
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    public f0() {
        this(10);
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void a(int i, E e2) {
        int i2 = this.e;
        if (i2 == 0 || i > this.c[i2 - 1]) {
            if (this.b && i2 >= this.c.length) {
                d();
            }
            int i3 = this.e;
            if (i3 >= this.c.length) {
                int e3 = a0.e(i3 + 1);
                int[] iArr = new int[e3];
                Object[] objArr = new Object[e3];
                int[] iArr2 = this.c;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.c = iArr;
                this.d = objArr;
            }
            this.c[i3] = i;
            this.d[i3] = e2;
            this.e = i3 + 1;
            return;
        }
        j(i, e2);
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
    public f0<E> clone() {
        try {
            f0<E> f0Var = (f0) super.clone();
            f0Var.c = (int[]) this.c.clone();
            f0Var.d = (Object[]) this.d.clone();
            return f0Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E e(int i) {
        return f(i, null);
    }

    public E f(int i, E e2) {
        int a = a0.a(this.c, this.e, i);
        if (a >= 0) {
            Object[] objArr = this.d;
            if (objArr[a] != f) {
                return (E) objArr[a];
            }
        }
        return e2;
    }

    public int g(int i) {
        if (this.b) {
            d();
        }
        return a0.a(this.c, this.e, i);
    }

    public int h(E e2) {
        if (this.b) {
            d();
        }
        for (int i = 0; i < this.e; i++) {
            if (this.d[i] == e2) {
                return i;
            }
        }
        return -1;
    }

    public int i(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public void j(int i, E e2) {
        int a = a0.a(this.c, this.e, i);
        if (a >= 0) {
            this.d[a] = e2;
            return;
        }
        int i2 = a ^ -1;
        int i3 = this.e;
        if (i2 < i3) {
            Object[] objArr = this.d;
            if (objArr[i2] == f) {
                this.c[i2] = i;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.b && i3 >= this.c.length) {
            d();
            i2 = a0.a(this.c, this.e, i) ^ -1;
        }
        int i4 = this.e;
        if (i4 >= this.c.length) {
            int e3 = a0.e(i4 + 1);
            int[] iArr = new int[e3];
            Object[] objArr2 = new Object[e3];
            int[] iArr2 = this.c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = iArr;
            this.d = objArr2;
        }
        int i5 = this.e;
        if (i5 - i2 != 0) {
            int[] iArr3 = this.c;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr4 = this.d;
            System.arraycopy(objArr4, i2, objArr4, i6, this.e - i2);
        }
        this.c[i2] = i;
        this.d[i2] = e2;
        this.e++;
    }

    public void k(int i) {
        Object[] objArr;
        Object obj;
        int a = a0.a(this.c, this.e, i);
        if (a >= 0 && (objArr = this.d)[a] != (obj = f)) {
            objArr[a] = obj;
            this.b = true;
        }
    }

    public int l() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public E m(int i) {
        if (this.b) {
            d();
        }
        return (E) this.d[i];
    }

    public String toString() {
        if (l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(i(i));
            sb.append('=');
            E m = m(i);
            if (m != this) {
                sb.append((Object) m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public f0(int i) {
        this.b = false;
        if (i == 0) {
            this.c = a0.a;
            this.d = a0.c;
            return;
        }
        int e2 = a0.e(i);
        this.c = new int[e2];
        this.d = new Object[e2];
    }
}
