package defpackage;

import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* renamed from: nk0  reason: default package */
public final class nk0 {
    final byte[] a;
    int b;
    int c;
    boolean d;
    boolean e;
    nk0 f;
    nk0 g;

    nk0() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }

    @Nullable
    public final nk0 a() {
        nk0 nk0 = this.f;
        nk0 nk02 = nk0 != this ? nk0 : null;
        nk0 nk03 = this.g;
        nk03.f = nk0;
        this.f.g = nk03;
        this.f = null;
        this.g = null;
        return nk02;
    }

    public final nk0 b(nk0 nk0) {
        nk0.g = this;
        nk0.f = this.f;
        this.f.g = nk0;
        this.f = nk0;
        return nk0;
    }

    /* access modifiers changed from: package-private */
    public final nk0 c() {
        this.d = true;
        return new nk0(this.a, this.b, this.c, true, false);
    }

    public final void d(nk0 nk0, int i) {
        if (nk0.e) {
            int i2 = nk0.c;
            if (i2 + i > 8192) {
                if (!nk0.d) {
                    int i3 = nk0.b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = nk0.a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        nk0.c -= nk0.b;
                        nk0.b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.a, this.b, nk0.a, nk0.c, i);
            nk0.c += i;
            this.b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    nk0(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }
}
