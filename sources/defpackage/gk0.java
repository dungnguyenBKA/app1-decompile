package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* renamed from: gk0  reason: default package */
public final class gk0 implements rk0 {
    private int b = 0;
    private final zj0 c;
    private final Inflater d;
    private final hk0 e;
    private final CRC32 f = new CRC32();

    public gk0(rk0 rk0) {
        if (rk0 != null) {
            Inflater inflater = new Inflater(true);
            this.d = inflater;
            int i = ik0.b;
            mk0 mk0 = new mk0(rk0);
            this.c = mk0;
            this.e = new hk0(mk0, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void j(String str, int i, int i2) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void o(xj0 xj0, long j, long j2) {
        nk0 nk0 = xj0.b;
        while (true) {
            int i = nk0.c;
            int i2 = nk0.b;
            if (j < ((long) (i - i2))) {
                break;
            }
            j -= (long) (i - i2);
            nk0 = nk0.f;
        }
        while (j2 > 0) {
            int i3 = (int) (((long) nk0.b) + j);
            int min = (int) Math.min((long) (nk0.c - i3), j2);
            this.f.update(nk0.a, i3, min);
            j2 -= (long) min;
            nk0 = nk0.f;
            j = 0;
        }
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.e.close();
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j == 0) {
            return 0;
        } else {
            if (this.b == 0) {
                this.c.c0(10);
                byte V = this.c.a().V(3);
                boolean z = ((V >> 1) & 1) == 1;
                if (z) {
                    o(this.c.a(), 0, 10);
                }
                j("ID1ID2", 8075, this.c.readShort());
                this.c.skip(8);
                if (((V >> 2) & 1) == 1) {
                    this.c.c0(2);
                    if (z) {
                        o(this.c.a(), 0, 2);
                    }
                    long W = (long) this.c.a().W();
                    this.c.c0(W);
                    if (z) {
                        j2 = W;
                        o(this.c.a(), 0, W);
                    } else {
                        j2 = W;
                    }
                    this.c.skip(j2);
                }
                if (((V >> 3) & 1) == 1) {
                    long e0 = this.c.e0((byte) 0);
                    if (e0 != -1) {
                        if (z) {
                            o(this.c.a(), 0, e0 + 1);
                        }
                        this.c.skip(e0 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((V >> 4) & 1) == 1) {
                    long e02 = this.c.e0((byte) 0);
                    if (e02 != -1) {
                        if (z) {
                            o(this.c.a(), 0, e02 + 1);
                        }
                        this.c.skip(e02 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z) {
                    j("FHCRC", this.c.W(), (short) ((int) this.f.getValue()));
                    this.f.reset();
                }
                this.b = 1;
            }
            if (this.b == 1) {
                long j3 = xj0.c;
                long read = this.e.read(xj0, j);
                if (read != -1) {
                    o(xj0, j3, read);
                    return read;
                }
                this.b = 2;
            }
            if (this.b == 2) {
                j("CRC", this.c.P(), (int) this.f.getValue());
                j("ISIZE", this.c.P(), (int) this.d.getBytesWritten());
                this.b = 3;
                if (!this.c.t()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.c.timeout();
    }
}
