package defpackage;

import defpackage.d0;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* renamed from: z  reason: default package */
public final class z<E> implements Collection<E>, Set<E> {
    private static final int[] f = new int[0];
    private static final Object[] g = new Object[0];
    private static Object[] h;
    private static int i;
    private static Object[] j;
    private static int k;
    private int[] b;
    Object[] c;
    int d;
    private d0<E, E> e;

    public z() {
        this(0);
    }

    private void a(int i2) {
        if (i2 == 8) {
            synchronized (z.class) {
                Object[] objArr = j;
                if (objArr != null) {
                    this.c = objArr;
                    j = (Object[]) objArr[0];
                    this.b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    k--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (z.class) {
                Object[] objArr2 = h;
                if (objArr2 != null) {
                    this.c = objArr2;
                    h = (Object[]) objArr2[0];
                    this.b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    i--;
                    return;
                }
            }
        }
        this.b = new int[i2];
        this.c = new Object[i2];
    }

    private static void b(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (z.class) {
                if (k < 10) {
                    objArr[0] = j;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    j = objArr;
                    k++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (z.class) {
                if (i < 10) {
                    objArr[0] = h;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    h = objArr;
                    i++;
                }
            }
        }
    }

    private int c(Object obj, int i2) {
        int i3 = this.d;
        if (i3 == 0) {
            return -1;
        }
        int a = a0.a(this.b, i3, i2);
        if (a < 0 || obj.equals(this.c[a])) {
            return a;
        }
        int i4 = a + 1;
        while (i4 < i3 && this.b[i4] == i2) {
            if (obj.equals(this.c[i4])) {
                return i4;
            }
            i4++;
        }
        int i5 = a - 1;
        while (i5 >= 0 && this.b[i5] == i2) {
            if (obj.equals(this.c[i5])) {
                return i5;
            }
            i5--;
        }
        return i4 ^ -1;
    }

    private int d() {
        int i2 = this.d;
        if (i2 == 0) {
            return -1;
        }
        int a = a0.a(this.b, i2, 0);
        if (a < 0 || this.c[a] == null) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.b[i3] == 0) {
            if (this.c[i3] == null) {
                return i3;
            }
            i3++;
        }
        int i4 = a - 1;
        while (i4 >= 0 && this.b[i4] == 0) {
            if (this.c[i4] == null) {
                return i4;
            }
            i4--;
        }
        return i3 ^ -1;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i2;
        int i3;
        if (e2 == null) {
            i3 = d();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            i3 = c(e2, hashCode);
        }
        if (i3 >= 0) {
            return false;
        }
        int i4 = i3 ^ -1;
        int i5 = this.d;
        int[] iArr = this.b;
        if (i5 >= iArr.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            Object[] objArr = this.c;
            a(i6);
            int[] iArr2 = this.b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.c, 0, objArr.length);
            }
            b(iArr, objArr, this.d);
        }
        int i7 = this.d;
        if (i4 < i7) {
            int[] iArr3 = this.b;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.c;
            System.arraycopy(objArr2, i4, objArr2, i8, this.d - i4);
        }
        this.b[i4] = i2;
        this.c[i4] = e2;
        this.d++;
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: z<E> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.d;
        int[] iArr = this.b;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.c;
            a(size);
            int i2 = this.d;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.b, 0, i2);
                System.arraycopy(objArr, 0, this.c, 0, this.d);
            }
            b(iArr, objArr, this.d);
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    public void clear() {
        int i2 = this.d;
        if (i2 != 0) {
            b(this.b, this.c, i2);
            this.b = f;
            this.c = g;
            this.d = 0;
        }
    }

    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public E e(int i2) {
        Object[] objArr = this.c;
        E e2 = (E) objArr[i2];
        int i3 = this.d;
        if (i3 <= 1) {
            b(this.b, objArr, i3);
            this.b = f;
            this.c = g;
            this.d = 0;
        } else {
            int[] iArr = this.b;
            int i4 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i5 = i3 - 1;
                this.d = i5;
                if (i2 < i5) {
                    int i6 = i2 + 1;
                    System.arraycopy(iArr, i6, iArr, i2, i5 - i2);
                    Object[] objArr2 = this.c;
                    System.arraycopy(objArr2, i6, objArr2, i2, this.d - i2);
                }
                this.c[this.d] = null;
            } else {
                if (i3 > 8) {
                    i4 = i3 + (i3 >> 1);
                }
                a(i4);
                this.d--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.b, 0, i2);
                    System.arraycopy(objArr, 0, this.c, 0, i2);
                }
                int i7 = this.d;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr, i8, this.b, i2, i7 - i2);
                    System.arraycopy(objArr, i8, this.c, i2, this.d - i2);
                }
            }
        }
        return e2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.d != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.d; i2++) {
                try {
                    if (!set.contains(this.c[i2])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public E f(int i2) {
        return (E) this.c[i2];
    }

    public int hashCode() {
        int[] iArr = this.b;
        int i2 = this.d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? d() : c(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.d <= 0;
    }

    @Override // java.util.Collection, java.util.Set, java.lang.Iterable
    public Iterator<E> iterator() {
        if (this.e == null) {
            this.e = new y(this);
        }
        d0<E, E> d0Var = this.e;
        if (d0Var.b == null) {
            d0Var.b = new d0.c();
        }
        return d0Var.b.iterator();
    }

    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        e(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.d - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.c[i2])) {
                e(i2);
                z = true;
            }
        }
        return z;
    }

    public int size() {
        return this.d;
    }

    public Object[] toArray() {
        int i2 = this.d;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.c, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.c[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public z(int i2) {
        if (i2 == 0) {
            this.b = f;
            this.c = g;
        } else {
            a(i2);
        }
        this.d = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.d));
        }
        System.arraycopy(this.c, 0, tArr, 0, this.d);
        int length = tArr.length;
        int i2 = this.d;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }
}
