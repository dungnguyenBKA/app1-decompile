package defpackage;

import defpackage.si0;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: bj0  reason: default package */
final class bj0 implements Closeable {
    private static final Logger h = Logger.getLogger(ti0.class.getName());
    private final yj0 b;
    private final boolean c;
    private final xj0 d;
    private int e = 16384;
    private boolean f;
    final si0.b g;

    bj0(yj0 yj0, boolean z) {
        this.b = yj0;
        this.c = z;
        xj0 xj0 = new xj0();
        this.d = xj0;
        this.g = new si0.b(xj0);
    }

    private void o0(int i, long j) {
        while (j > 0) {
            int min = (int) Math.min((long) this.e, j);
            long j2 = (long) min;
            j -= j2;
            S(i, min, (byte) 9, j == 0 ? (byte) 4 : 0);
            this.b.H(this.d, j2);
        }
    }

    public synchronized void L(boolean z, int i, xj0 xj0, int i2) {
        if (!this.f) {
            S(i, i2, (byte) 0, z ? (byte) 1 : 0);
            if (i2 > 0) {
                this.b.H(xj0, (long) i2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public void S(int i, int i2, byte b2, byte b3) {
        Logger logger = h;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(ti0.a(false, i, i2, b2, b3));
        }
        int i3 = this.e;
        if (i2 > i3) {
            ti0.b("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        } else if ((Integer.MIN_VALUE & i) == 0) {
            yj0 yj0 = this.b;
            yj0.u((i2 >>> 16) & 255);
            yj0.u((i2 >>> 8) & 255);
            yj0.u(i2 & 255);
            this.b.u(b2 & 255);
            this.b.u(b3 & 255);
            this.b.m(i & Integer.MAX_VALUE);
        } else {
            ti0.b("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        }
    }

    public synchronized void V(int i, qi0 qi0, byte[] bArr) {
        if (this.f) {
            throw new IOException("closed");
        } else if (qi0.b != -1) {
            S(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.b.m(i);
            this.b.m(qi0.b);
            if (bArr.length > 0) {
                this.b.write(bArr);
            }
            this.b.flush();
        } else {
            ti0.b("errorCode.httpCode == -1", new Object[0]);
            throw null;
        }
    }

    /* access modifiers changed from: package-private */
    public void b0(boolean z, int i, List<ri0> list) {
        if (!this.f) {
            this.g.f(list);
            long size = this.d.size();
            int min = (int) Math.min((long) this.e, size);
            long j = (long) min;
            byte b2 = size == j ? (byte) 4 : 0;
            if (z) {
                b2 = (byte) (b2 | 1);
            }
            S(i, min, (byte) 1, b2);
            this.b.H(this.d, j);
            if (size > j) {
                o0(i, size - j);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f = true;
        this.b.close();
    }

    public synchronized void flush() {
        if (!this.f) {
            this.b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public int i0() {
        return this.e;
    }

    public synchronized void j(ej0 ej0) {
        if (!this.f) {
            this.e = ej0.f(this.e);
            if (ej0.c() != -1) {
                this.g.d(ej0.c());
            }
            S(0, 0, (byte) 4, (byte) 1);
            this.b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void j0(boolean z, int i, int i2) {
        if (!this.f) {
            S(0, 8, (byte) 6, z ? (byte) 1 : 0);
            this.b.m(i);
            this.b.m(i2);
            this.b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void k0(int i, qi0 qi0) {
        if (this.f) {
            throw new IOException("closed");
        } else if (qi0.b != -1) {
            S(i, 4, (byte) 3, (byte) 0);
            this.b.m(qi0.b);
            this.b.flush();
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void l0(ej0 ej0) {
        if (!this.f) {
            int i = 0;
            S(0, ej0.j() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (ej0.g(i)) {
                    this.b.i(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.b.m(ej0.b(i));
                }
                i++;
            }
            this.b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    /* JADX WARN: Incorrect args count in method signature: (ZIILjava/util/List<Lri0;>;)V */
    public synchronized void m0(boolean z, int i, List list) {
        if (!this.f) {
            b0(z, i, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void n0(int i, long j) {
        if (this.f) {
            throw new IOException("closed");
        } else if (j == 0 || j > 2147483647L) {
            ti0.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            throw null;
        } else {
            S(i, 4, (byte) 8, (byte) 0);
            this.b.m((int) j);
            this.b.flush();
        }
    }

    public synchronized void o() {
        if (this.f) {
            throw new IOException("closed");
        } else if (this.c) {
            Logger logger = h;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(rh0.o(">> CONNECTION %s", ti0.a.g()));
            }
            this.b.write(ti0.a.p());
            this.b.flush();
        }
    }
}
