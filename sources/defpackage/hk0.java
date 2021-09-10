package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* renamed from: hk0  reason: default package */
public final class hk0 implements rk0 {
    private final zj0 b;
    private final Inflater c;
    private int d;
    private boolean e;

    hk0(zj0 zj0, Inflater inflater) {
        this.b = zj0;
        this.c = inflater;
    }

    private void j() {
        int i = this.d;
        if (i != 0) {
            int remaining = i - this.c.getRemaining();
            this.d -= remaining;
            this.b.skip((long) remaining);
        }
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.e) {
            this.c.end();
            this.e = true;
            this.b.close();
        }
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        nk0 q0;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.e) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0;
        } else {
            while (true) {
                boolean z = false;
                if (this.c.needsInput()) {
                    j();
                    if (this.c.getRemaining() != 0) {
                        throw new IllegalStateException("?");
                    } else if (this.b.t()) {
                        z = true;
                    } else {
                        nk0 nk0 = this.b.a().b;
                        int i = nk0.c;
                        int i2 = nk0.b;
                        int i3 = i - i2;
                        this.d = i3;
                        this.c.setInput(nk0.a, i2, i3);
                    }
                }
                try {
                    q0 = xj0.q0(1);
                    int inflate = this.c.inflate(q0.a, q0.c, (int) Math.min(j, (long) (8192 - q0.c)));
                    if (inflate > 0) {
                        q0.c += inflate;
                        long j2 = (long) inflate;
                        xj0.c += j2;
                        return j2;
                    } else if (this.c.finished()) {
                        break;
                    } else if (this.c.needsDictionary()) {
                        break;
                    } else if (z) {
                        throw new EOFException("source exhausted prematurely");
                    }
                } catch (DataFormatException e2) {
                    throw new IOException(e2);
                }
            }
            j();
            if (q0.b != q0.c) {
                return -1;
            }
            xj0.b = q0.a();
            ok0.a(q0);
            return -1;
        }
    }

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.b.timeout();
    }
}
