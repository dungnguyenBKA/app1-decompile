package defpackage;

import android.graphics.Bitmap;
import defpackage.mc;

/* renamed from: ii  reason: default package */
public final class ii implements mc.a {
    private final qe a;
    private final oe b;

    public ii(qe qeVar, oe oeVar) {
        this.a = qeVar;
        this.b = oeVar;
    }

    public Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.a.c(i, i2, config);
    }

    public byte[] b(int i) {
        oe oeVar = this.b;
        if (oeVar == null) {
            return new byte[i];
        }
        return (byte[]) oeVar.e(i, byte[].class);
    }

    public int[] c(int i) {
        oe oeVar = this.b;
        if (oeVar == null) {
            return new int[i];
        }
        return (int[]) oeVar.e(i, int[].class);
    }

    public void d(Bitmap bitmap) {
        this.a.d(bitmap);
    }

    public void e(byte[] bArr) {
        oe oeVar = this.b;
        if (oeVar != null) {
            oeVar.d(bArr);
        }
    }

    public void f(int[] iArr) {
        oe oeVar = this.b;
        if (oeVar != null) {
            oeVar.d(iArr);
        }
    }
}
