package defpackage;

/* renamed from: l2  reason: default package */
public class l2<T> implements k2<T> {
    private final Object[] a;
    private int b;

    public l2(int i) {
        if (i > 0) {
            this.a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // defpackage.k2
    public boolean a(T t) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.b;
            if (i2 >= i) {
                z = false;
                break;
            } else if (this.a[i2] == t) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }

    @Override // defpackage.k2
    public T b() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.b = i - 1;
        return t;
    }
}
