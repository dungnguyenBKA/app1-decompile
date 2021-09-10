package defpackage;

import android.graphics.Bitmap;
import android.util.Log;
import defpackage.mc;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* renamed from: qc  reason: default package */
public class qc implements mc {
    private static final String u = "qc";
    private int[] a;
    private final int[] b = new int[256];
    private final mc.a c;
    private ByteBuffer d;
    private byte[] e;
    private short[] f;
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private int[] j;
    private int k;
    private oc l;
    private Bitmap m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private Boolean s;
    private Bitmap.Config t = Bitmap.Config.ARGB_8888;

    public qc(mc.a aVar, oc ocVar, ByteBuffer byteBuffer, int i2) {
        this.c = aVar;
        this.l = new oc();
        synchronized (this) {
            if (i2 > 0) {
                int highestOneBit = Integer.highestOneBit(i2);
                this.o = 0;
                this.l = ocVar;
                this.k = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.d = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.d.order(ByteOrder.LITTLE_ENDIAN);
                this.n = false;
                Iterator<nc> it = ocVar.e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().g == 3) {
                            this.n = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                this.p = highestOneBit;
                int i3 = ocVar.f;
                this.r = i3 / highestOneBit;
                int i4 = ocVar.g;
                this.q = i4 / highestOneBit;
                this.i = ((ii) this.c).b(i3 * i4);
                this.j = ((ii) this.c).c(this.r * this.q);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
        }
    }

    private Bitmap h() {
        Boolean bool = this.s;
        Bitmap a2 = ((ii) this.c).a(this.r, this.q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.t);
        a2.setHasAlpha(true);
        return a2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0043, code lost:
        if (r3.j == r36.h) goto L_0x0045;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap j(defpackage.nc r36, defpackage.nc r37) {
        /*
        // Method dump skipped, instructions count: 1083
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qc.j(nc, nc):android.graphics.Bitmap");
    }

    @Override // defpackage.mc
    public synchronized Bitmap a() {
        if (this.l.c <= 0 || this.k < 0) {
            if (Log.isLoggable(u, 3)) {
                int i2 = this.l.c;
            }
            this.o = 1;
        }
        int i3 = this.o;
        if (i3 != 1) {
            if (i3 != 2) {
                this.o = 0;
                if (this.e == null) {
                    this.e = ((ii) this.c).b(255);
                }
                nc ncVar = this.l.e.get(this.k);
                int i4 = this.k - 1;
                nc ncVar2 = i4 >= 0 ? this.l.e.get(i4) : null;
                int[] iArr = ncVar.k;
                if (iArr == null) {
                    iArr = this.l.a;
                }
                this.a = iArr;
                if (iArr == null) {
                    Log.isLoggable(u, 3);
                    this.o = 1;
                    return null;
                }
                if (ncVar.f) {
                    System.arraycopy(iArr, 0, this.b, 0, iArr.length);
                    int[] iArr2 = this.b;
                    this.a = iArr2;
                    iArr2[ncVar.h] = 0;
                    if (ncVar.g == 2 && this.k == 0) {
                        this.s = Boolean.TRUE;
                    }
                }
                return j(ncVar, ncVar2);
            }
        }
        Log.isLoggable(u, 3);
        return null;
    }

    @Override // defpackage.mc
    public void b() {
        this.k = (this.k + 1) % this.l.c;
    }

    @Override // defpackage.mc
    public int c() {
        return this.l.c;
    }

    @Override // defpackage.mc
    public void clear() {
        this.l = null;
        byte[] bArr = this.i;
        if (bArr != null) {
            ((ii) this.c).e(bArr);
        }
        int[] iArr = this.j;
        if (iArr != null) {
            ((ii) this.c).f(iArr);
        }
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            ((ii) this.c).d(bitmap);
        }
        this.m = null;
        this.d = null;
        this.s = null;
        byte[] bArr2 = this.e;
        if (bArr2 != null) {
            ((ii) this.c).e(bArr2);
        }
    }

    @Override // defpackage.mc
    public int d() {
        int i2;
        oc ocVar = this.l;
        int i3 = ocVar.c;
        if (i3 <= 0 || (i2 = this.k) < 0) {
            return 0;
        }
        if (i2 < 0 || i2 >= i3) {
            return -1;
        }
        return ocVar.e.get(i2).i;
    }

    @Override // defpackage.mc
    public ByteBuffer e() {
        return this.d;
    }

    @Override // defpackage.mc
    public int f() {
        return this.k;
    }

    @Override // defpackage.mc
    public int g() {
        return (this.j.length * 4) + this.d.limit() + this.i.length;
    }

    public void i(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }
}
