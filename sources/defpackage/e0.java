package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* renamed from: e0  reason: default package */
public class e0<K, V> {
    static Object[] e;
    static int f;
    static Object[] g;
    static int h;
    int[] b;
    Object[] c;
    int d;

    public e0() {
        this.b = a0.a;
        this.c = a0.c;
        this.d = 0;
    }

    private void a(int i) {
        if (i == 8) {
            synchronized (e0.class) {
                Object[] objArr = g;
                if (objArr != null) {
                    this.c = objArr;
                    g = (Object[]) objArr[0];
                    this.b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    h--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (e0.class) {
                Object[] objArr2 = e;
                if (objArr2 != null) {
                    this.c = objArr2;
                    e = (Object[]) objArr2[0];
                    this.b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f--;
                    return;
                }
            }
        }
        this.b = new int[i];
        this.c = new Object[(i << 1)];
    }

    private static void c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (e0.class) {
                if (h < 10) {
                    objArr[0] = g;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    g = objArr;
                    h++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (e0.class) {
                if (f < 10) {
                    objArr[0] = e;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    e = objArr;
                    f++;
                }
            }
        }
    }

    public void b(int i) {
        int i2 = this.d;
        int[] iArr = this.b;
        if (iArr.length < i) {
            Object[] objArr = this.c;
            a(i);
            if (this.d > 0) {
                System.arraycopy(iArr, 0, this.b, 0, i2);
                System.arraycopy(objArr, 0, this.c, 0, i2 << 1);
            }
            c(iArr, objArr, i2);
        }
        if (this.d != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.b;
            Object[] objArr = this.c;
            this.b = a0.a;
            this.c = a0.c;
            this.d = 0;
            c(iArr, objArr, i);
        }
        if (this.d > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    /* access modifiers changed from: package-private */
    public int d(Object obj, int i) {
        int i2 = this.d;
        if (i2 == 0) {
            return -1;
        }
        try {
            int a = a0.a(this.b, i2, i);
            if (a < 0 || obj.equals(this.c[a << 1])) {
                return a;
            }
            int i3 = a + 1;
            while (i3 < i2 && this.b[i3] == i) {
                if (obj.equals(this.c[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            int i4 = a - 1;
            while (i4 >= 0 && this.b[i4] == i) {
                if (obj.equals(this.c[i4 << 1])) {
                    return i4;
                }
                i4--;
            }
            return i3 ^ -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public int e(Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (this.d != e0Var.d) {
                return false;
            }
            for (int i = 0; i < this.d; i++) {
                try {
                    K h2 = h(i);
                    V l = l(i);
                    Object obj2 = e0Var.get(h2);
                    if (l == null) {
                        if (obj2 != null || !e0Var.containsKey(h2)) {
                            return false;
                        }
                    } else if (!l.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.d != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.d; i2++) {
                try {
                    K h3 = h(i2);
                    V l2 = l(i2);
                    Object obj3 = map.get(h3);
                    if (l2 == null) {
                        if (obj3 != null || !map.containsKey(h3)) {
                            return false;
                        }
                    } else if (!l2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        int i = this.d;
        if (i == 0) {
            return -1;
        }
        try {
            int a = a0.a(this.b, i, 0);
            if (a < 0 || this.c[a << 1] == null) {
                return a;
            }
            int i2 = a + 1;
            while (i2 < i && this.b[i2] == 0) {
                if (this.c[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            int i3 = a - 1;
            while (i3 >= 0 && this.b[i3] == 0) {
                if (this.c[i3 << 1] == null) {
                    return i3;
                }
                i3--;
            }
            return i2 ^ -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* access modifiers changed from: package-private */
    public int g(Object obj) {
        int i = this.d * 2;
        Object[] objArr = this.c;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int e2 = e(obj);
        return e2 >= 0 ? (V) this.c[(e2 << 1) + 1] : v;
    }

    public K h(int i) {
        return (K) this.c[i << 1];
    }

    public int hashCode() {
        int[] iArr = this.b;
        Object[] objArr = this.c;
        int i = this.d;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: e0<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    public void i(e0<? extends K, ? extends V> e0Var) {
        int i = e0Var.d;
        b(this.d + i);
        if (this.d != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(e0Var.h(i2), e0Var.l(i2));
            }
        } else if (i > 0) {
            System.arraycopy(e0Var.b, 0, this.b, 0, i);
            System.arraycopy(e0Var.c, 0, this.c, 0, i << 1);
            this.d = i;
        }
    }

    public boolean isEmpty() {
        return this.d <= 0;
    }

    public V j(int i) {
        Object[] objArr = this.c;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.d;
        int i4 = 0;
        if (i3 <= 1) {
            c(this.b, objArr, i3);
            this.b = a0.a;
            this.c = a0.c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.b;
            int i6 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, iArr, i, i8);
                    Object[] objArr2 = this.c;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i2, i8 << 1);
                }
                Object[] objArr3 = this.c;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i3 > 8) {
                    i6 = i3 + (i3 >> 1);
                }
                a(i6);
                if (i3 == this.d) {
                    if (i > 0) {
                        System.arraycopy(iArr, 0, this.b, 0, i);
                        System.arraycopy(objArr, 0, this.c, 0, i2);
                    }
                    if (i < i5) {
                        int i10 = i + 1;
                        int i11 = i5 - i;
                        System.arraycopy(iArr, i10, this.b, i, i11);
                        System.arraycopy(objArr, i10 << 1, this.c, i2, i11 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
            i4 = i5;
        }
        if (i3 == this.d) {
            this.d = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public V k(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.c;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public V l(int i) {
        return (V) this.c[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.d;
        if (k == null) {
            i2 = f();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            i2 = d(k, hashCode);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.c;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ -1;
        int[] iArr = this.b;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.c;
            a(i6);
            if (i3 == this.d) {
                int[] iArr2 = this.b;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.c, 0, objArr2.length);
                }
                c(iArr, objArr2, i3);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i5 < i3) {
            int[] iArr3 = this.b;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.d - i5) << 1);
        }
        int i8 = this.d;
        if (i3 == i8) {
            int[] iArr4 = this.b;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.c;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.d = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V orDefault = getOrDefault(k, null);
        return orDefault == null ? put(k, v) : orDefault;
    }

    public V remove(Object obj) {
        int e2 = e(obj);
        if (e2 >= 0) {
            return j(e2);
        }
        return null;
    }

    public V replace(K k, V v) {
        int e2 = e(k);
        if (e2 >= 0) {
            return k(e2, v);
        }
        return null;
    }

    public int size() {
        return this.d;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        for (int i = 0; i < this.d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K h2 = h(i);
            if (h2 != this) {
                sb.append((Object) h2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V l = l(i);
            if (l != this) {
                sb.append((Object) l);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int e2 = e(obj);
        if (e2 < 0) {
            return false;
        }
        V l = l(e2);
        if (obj2 != l && (obj2 == null || !obj2.equals(l))) {
            return false;
        }
        j(e2);
        return true;
    }

    public boolean replace(K k, V v, V v2) {
        int e2 = e(k);
        if (e2 < 0) {
            return false;
        }
        V l = l(e2);
        if (l != v && (v == null || !v.equals(l))) {
            return false;
        }
        k(e2, v2);
        return true;
    }

    public e0(int i) {
        if (i == 0) {
            this.b = a0.a;
            this.c = a0.c;
        } else {
            a(i);
        }
        this.d = 0;
    }

    public e0(e0<K, V> e0Var) {
        this();
        if (e0Var != null) {
            i(e0Var);
        }
    }
}
