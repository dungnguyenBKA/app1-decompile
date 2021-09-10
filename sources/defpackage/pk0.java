package defpackage;

import java.util.Arrays;

/* access modifiers changed from: package-private */
/* renamed from: pk0  reason: default package */
public final class pk0 extends ak0 {
    final transient byte[][] g;
    final transient int[] h;

    pk0(xj0 xj0, int i) {
        super(null);
        tk0.b(xj0.c, 0, (long) i);
        nk0 nk0 = xj0.b;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = nk0.c;
            int i6 = nk0.b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                nk0 = nk0.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.g = new byte[i4][];
        this.h = new int[(i4 * 2)];
        nk0 nk02 = xj0.b;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.g;
            bArr[i7] = nk02.a;
            int i8 = nk02.c;
            int i9 = nk02.b;
            int i10 = (i8 - i9) + i2;
            i2 = i10 > i ? i : i10;
            int[] iArr = this.h;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            nk02.d = true;
            i7++;
            nk02 = nk02.f;
        }
    }

    private int s(int i) {
        int binarySearch = Arrays.binarySearch(this.h, 0, this.g.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ -1;
    }

    private ak0 t() {
        return new ak0(p());
    }

    @Override // defpackage.ak0
    public String a() {
        return t().a();
    }

    @Override // defpackage.ak0
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ak0) {
            ak0 ak0 = (ak0) obj;
            if (ak0.m() != m() || !j(0, ak0, 0, m())) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.ak0
    public byte f(int i) {
        int i2;
        tk0.b((long) this.h[this.g.length - 1], (long) i, 1);
        int s = s(i);
        if (s == 0) {
            i2 = 0;
        } else {
            i2 = this.h[s - 1];
        }
        int[] iArr = this.h;
        byte[][] bArr = this.g;
        return bArr[s][(i - i2) + iArr[bArr.length + s]];
    }

    @Override // defpackage.ak0
    public String g() {
        return t().g();
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.ak0
    public byte[] h() {
        return p();
    }

    @Override // defpackage.ak0
    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int length = this.g.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.g[i2];
            int[] iArr = this.h;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.c = i4;
        return i4;
    }

    @Override // defpackage.ak0
    public boolean j(int i, ak0 ak0, int i2, int i3) {
        int i4;
        if (i < 0 || i > m() - i3) {
            return false;
        }
        int s = s(i);
        while (i3 > 0) {
            if (s == 0) {
                i4 = 0;
            } else {
                i4 = this.h[s - 1];
            }
            int min = Math.min(i3, ((this.h[s] - i4) + i4) - i);
            int[] iArr = this.h;
            byte[][] bArr = this.g;
            if (!ak0.k(i2, bArr[s], (i - i4) + iArr[bArr.length + s], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            s++;
        }
        return true;
    }

    @Override // defpackage.ak0
    public boolean k(int i, byte[] bArr, int i2, int i3) {
        int i4;
        if (i < 0 || i > m() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int s = s(i);
        while (i3 > 0) {
            if (s == 0) {
                i4 = 0;
            } else {
                i4 = this.h[s - 1];
            }
            int min = Math.min(i3, ((this.h[s] - i4) + i4) - i);
            int[] iArr = this.h;
            byte[][] bArr2 = this.g;
            if (!tk0.a(bArr2[s], (i - i4) + iArr[bArr2.length + s], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            s++;
        }
        return true;
    }

    @Override // defpackage.ak0
    public ak0 l() {
        return t().l();
    }

    @Override // defpackage.ak0
    public int m() {
        return this.h[this.g.length - 1];
    }

    @Override // defpackage.ak0
    public ak0 n(int i, int i2) {
        return t().n(i, i2);
    }

    @Override // defpackage.ak0
    public ak0 o() {
        return t().o();
    }

    @Override // defpackage.ak0
    public byte[] p() {
        int[] iArr = this.h;
        byte[][] bArr = this.g;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.h;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.g[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // defpackage.ak0
    public String q() {
        return t().q();
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.ak0
    public void r(xj0 xj0) {
        int length = this.g.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.h;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            nk0 nk0 = new nk0(this.g[i], i3, (i3 + i4) - i2, true, false);
            nk0 nk02 = xj0.b;
            if (nk02 == null) {
                nk0.g = nk0;
                nk0.f = nk0;
                xj0.b = nk0;
            } else {
                nk02.g.b(nk0);
            }
            i++;
            i2 = i4;
        }
        xj0.c += (long) i2;
    }

    @Override // defpackage.ak0
    public String toString() {
        return t().toString();
    }
}
