package defpackage;

import defpackage.si0;
import defpackage.vi0;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* access modifiers changed from: package-private */
/* renamed from: zi0  reason: default package */
public final class zi0 implements Closeable {
    static final Logger f = Logger.getLogger(ti0.class.getName());
    private final zj0 b;
    private final a c;
    private final boolean d;
    final si0.a e;

    /* access modifiers changed from: package-private */
    /* renamed from: zi0$a */
    public static final class a implements rk0 {
        private final zj0 b;
        int c;
        byte d;
        int e;
        int f;
        short g;

        a(zj0 zj0) {
            this.b = zj0;
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // defpackage.rk0
        public long read(xj0 xj0, long j) {
            int i;
            int readInt;
            do {
                int i2 = this.f;
                if (i2 == 0) {
                    this.b.skip((long) this.g);
                    this.g = 0;
                    if ((this.d & 4) != 0) {
                        return -1;
                    }
                    i = this.e;
                    int b0 = zi0.b0(this.b);
                    this.f = b0;
                    this.c = b0;
                    byte readByte = (byte) (this.b.readByte() & 255);
                    this.d = (byte) (this.b.readByte() & 255);
                    Logger logger = zi0.f;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(ti0.a(true, this.e, this.c, readByte, this.d));
                    }
                    readInt = this.b.readInt() & Integer.MAX_VALUE;
                    this.e = readInt;
                    if (readByte != 9) {
                        ti0.c("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                        throw null;
                    }
                } else {
                    long read = this.b.read(xj0, Math.min(j, (long) i2));
                    if (read == -1) {
                        return -1;
                    }
                    this.f = (int) (((long) this.f) - read);
                    return read;
                }
            } while (readInt == i);
            ti0.c("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }

        @Override // defpackage.rk0
        public sk0 timeout() {
            return this.b.timeout();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: zi0$b */
    public interface b {
    }

    zi0(zj0 zj0, boolean z) {
        this.b = zj0;
        this.d = z;
        a aVar = new a(zj0);
        this.c = aVar;
        this.e = new si0.a(4096, aVar);
    }

    private void S(b bVar, int i, int i2) {
        aj0[] aj0Arr;
        if (i < 8) {
            ti0.c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.b.readInt();
            int readInt2 = this.b.readInt();
            int i3 = i - 8;
            if (qi0.a(readInt2) != null) {
                ak0 ak0 = ak0.f;
                if (i3 > 0) {
                    ak0 = this.b.f((long) i3);
                }
                vi0.l lVar = (vi0.l) bVar;
                Objects.requireNonNull(lVar);
                ak0.m();
                synchronized (vi0.this) {
                    aj0Arr = (aj0[]) vi0.this.d.values().toArray(new aj0[vi0.this.d.size()]);
                    vi0.this.h = true;
                }
                for (aj0 aj0 : aj0Arr) {
                    if (aj0.c > readInt && aj0.i()) {
                        qi0 qi0 = qi0.REFUSED_STREAM;
                        synchronized (aj0) {
                            if (aj0.k == null) {
                                aj0.k = qi0;
                                aj0.notifyAll();
                            }
                        }
                        vi0.this.y0(aj0.c);
                    }
                }
                return;
            }
            ti0.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            throw null;
        } else {
            ti0.c("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
    }

    private List<ri0> V(int i, short s, byte b2, int i2) {
        a aVar = this.c;
        aVar.f = i;
        aVar.c = i;
        aVar.g = s;
        aVar.d = b2;
        aVar.e = i2;
        this.e.h();
        return this.e.d();
    }

    static int b0(zj0 zj0) {
        return (zj0.readByte() & 255) | ((zj0.readByte() & 255) << 16) | ((zj0.readByte() & 255) << 8);
    }

    private void i0(b bVar, int i, int i2) {
        if (i == 4) {
            long readInt = ((long) this.b.readInt()) & 2147483647L;
            if (readInt != 0) {
                vi0.l lVar = (vi0.l) bVar;
                if (i2 == 0) {
                    synchronized (vi0.this) {
                        vi0 vi0 = vi0.this;
                        vi0.s += readInt;
                        vi0.notifyAll();
                    }
                    return;
                }
                aj0 o0 = vi0.this.o0(i2);
                if (o0 != null) {
                    synchronized (o0) {
                        o0.b += readInt;
                        if (readInt > 0) {
                            o0.notifyAll();
                        }
                    }
                    return;
                }
                return;
            }
            ti0.c("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
        ti0.c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        throw null;
    }

    static int j(int i, byte b2, short s) {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        ti0.c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        throw null;
    }

    public void L(b bVar) {
        if (!this.d) {
            zj0 zj0 = this.b;
            ak0 ak0 = ti0.a;
            ak0 f2 = zj0.f((long) ak0.m());
            Logger logger = f;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(rh0.o("<< CONNECTION %s", f2.g()));
            }
            if (!ak0.equals(f2)) {
                ti0.c("Expected a connection header but was %s", f2.q());
                throw null;
            }
        } else if (!o(true, bVar)) {
            ti0.c("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    public boolean o(boolean z, b bVar) {
        short s = 0;
        try {
            this.b.c0(9);
            int b0 = b0(this.b);
            if (b0 < 0 || b0 > 16384) {
                ti0.c("FRAME_SIZE_ERROR: %s", Integer.valueOf(b0));
                throw null;
            }
            byte readByte = (byte) (this.b.readByte() & 255);
            if (!z || readByte == 4) {
                byte readByte2 = (byte) (this.b.readByte() & 255);
                int readInt = this.b.readInt() & Integer.MAX_VALUE;
                Logger logger = f;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(ti0.a(true, readInt, b0, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        if (readInt != 0) {
                            boolean z2 = (readByte2 & 1) != 0;
                            if (!((readByte2 & 32) != 0)) {
                                if ((readByte2 & 8) != 0) {
                                    s = (short) (this.b.readByte() & 255);
                                }
                                int j = j(b0, readByte2, s);
                                zj0 zj0 = this.b;
                                vi0.l lVar = (vi0.l) bVar;
                                if (vi0.this.x0(readInt)) {
                                    vi0.this.s0(readInt, zj0, j, z2);
                                } else {
                                    aj0 o0 = vi0.this.o0(readInt);
                                    if (o0 == null) {
                                        vi0.this.F0(readInt, qi0.PROTOCOL_ERROR);
                                        long j2 = (long) j;
                                        vi0.this.C0(j2);
                                        zj0.skip(j2);
                                    } else {
                                        o0.k(zj0, j);
                                        if (z2) {
                                            o0.l();
                                        }
                                    }
                                }
                                this.b.skip((long) s);
                                break;
                            } else {
                                ti0.c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                                throw null;
                            }
                        } else {
                            ti0.c("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
                            throw null;
                        }
                    case 1:
                        if (readInt != 0) {
                            boolean z3 = (readByte2 & 1) != 0;
                            short readByte3 = (readByte2 & 8) != 0 ? (short) (this.b.readByte() & 255) : 0;
                            if ((readByte2 & 32) != 0) {
                                this.b.readInt();
                                this.b.readByte();
                                Objects.requireNonNull((vi0.l) bVar);
                                b0 -= 5;
                            }
                            List<ri0> V = V(j(b0, readByte2, readByte3), readByte3, readByte2, readInt);
                            vi0.l lVar2 = (vi0.l) bVar;
                            if (vi0.this.x0(readInt)) {
                                vi0.this.u0(readInt, V, z3);
                                break;
                            } else {
                                synchronized (vi0.this) {
                                    aj0 o02 = vi0.this.o0(readInt);
                                    if (o02 == null) {
                                        if (vi0.this.h) {
                                            break;
                                        } else {
                                            vi0 vi0 = vi0.this;
                                            if (readInt > vi0.f) {
                                                if (readInt % 2 == vi0.g % 2) {
                                                    break;
                                                } else {
                                                    aj0 aj0 = new aj0(readInt, vi0.this, false, z3, rh0.A(V));
                                                    vi0 vi02 = vi0.this;
                                                    vi02.f = readInt;
                                                    vi02.d.put(Integer.valueOf(readInt), aj0);
                                                    vi0.z.execute(new wi0(lVar2, "OkHttp %s stream %d", new Object[]{vi0.this.e, Integer.valueOf(readInt)}, aj0));
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    } else {
                                        o02.m(V);
                                        if (z3) {
                                            o02.l();
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            ti0.c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                            throw null;
                        }
                        break;
                    case 2:
                        if (b0 != 5) {
                            ti0.c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(b0));
                            throw null;
                        } else if (readInt != 0) {
                            this.b.readInt();
                            this.b.readByte();
                            Objects.requireNonNull((vi0.l) bVar);
                            break;
                        } else {
                            ti0.c("TYPE_PRIORITY streamId == 0", new Object[0]);
                            throw null;
                        }
                    case 3:
                        if (b0 != 4) {
                            ti0.c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(b0));
                            throw null;
                        } else if (readInt != 0) {
                            int readInt2 = this.b.readInt();
                            qi0 a2 = qi0.a(readInt2);
                            if (a2 != null) {
                                vi0.l lVar3 = (vi0.l) bVar;
                                if (vi0.this.x0(readInt)) {
                                    vi0.this.w0(readInt, a2);
                                    break;
                                } else {
                                    aj0 y0 = vi0.this.y0(readInt);
                                    if (y0 != null) {
                                        synchronized (y0) {
                                            if (y0.k == null) {
                                                y0.k = a2;
                                                y0.notifyAll();
                                            }
                                            break;
                                        }
                                    }
                                }
                            } else {
                                ti0.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt2));
                                throw null;
                            }
                        } else {
                            ti0.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
                            throw null;
                        }
                        break;
                    case 4:
                        if (readInt != 0) {
                            ti0.c("TYPE_SETTINGS streamId != 0", new Object[0]);
                            throw null;
                        } else if ((readByte2 & 1) != 0) {
                            if (b0 == 0) {
                                Objects.requireNonNull((vi0.l) bVar);
                                break;
                            } else {
                                ti0.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                                throw null;
                            }
                        } else if (b0 % 6 == 0) {
                            ej0 ej0 = new ej0();
                            for (int i = 0; i < b0; i += 6) {
                                int readShort = this.b.readShort() & 65535;
                                int readInt3 = this.b.readInt();
                                if (readShort != 2) {
                                    if (readShort == 3) {
                                        readShort = 4;
                                    } else if (readShort == 4) {
                                        readShort = 7;
                                        if (readInt3 < 0) {
                                            ti0.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                            throw null;
                                        }
                                    } else if (readShort == 5 && (readInt3 < 16384 || readInt3 > 16777215)) {
                                        ti0.c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt3));
                                        throw null;
                                    }
                                } else if (!(readInt3 == 0 || readInt3 == 1)) {
                                    ti0.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                    throw null;
                                }
                                ej0.i(readShort, readInt3);
                            }
                            vi0.l lVar4 = (vi0.l) bVar;
                            Objects.requireNonNull(lVar4);
                            vi0.this.i.execute(new xi0(lVar4, "OkHttp %s ACK Settings", new Object[]{vi0.this.e}, false, ej0));
                            break;
                        } else {
                            ti0.c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(b0));
                            throw null;
                        }
                    case 5:
                        if (readInt != 0) {
                            if ((readByte2 & 8) != 0) {
                                s = (short) (this.b.readByte() & 255);
                            }
                            vi0.this.v0(this.b.readInt() & Integer.MAX_VALUE, V(j(b0 - 4, readByte2, s), s, readByte2, readInt));
                            break;
                        } else {
                            ti0.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                            throw null;
                        }
                    case 6:
                        if (b0 != 8) {
                            ti0.c("TYPE_PING length != 8: %s", Integer.valueOf(b0));
                            throw null;
                        } else if (readInt == 0) {
                            int readInt4 = this.b.readInt();
                            int readInt5 = this.b.readInt();
                            if ((readByte2 & 1) != 0) {
                                s = 1;
                            }
                            vi0.l lVar5 = (vi0.l) bVar;
                            Objects.requireNonNull(lVar5);
                            if (s != 0) {
                                synchronized (vi0.this) {
                                    if (readInt4 == 1) {
                                        try {
                                            vi0.L(vi0.this);
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    } else if (readInt4 == 2) {
                                        vi0.l0(vi0.this);
                                    } else if (readInt4 == 3) {
                                        vi0.m0(vi0.this);
                                        vi0.this.notifyAll();
                                    }
                                }
                                break;
                            } else {
                                try {
                                    vi0.this.i.execute(new vi0.k(true, readInt4, readInt5));
                                    break;
                                } catch (RejectedExecutionException unused) {
                                    break;
                                }
                            }
                        } else {
                            ti0.c("TYPE_PING streamId != 0", new Object[0]);
                            throw null;
                        }
                    case 7:
                        S(bVar, b0, readInt);
                        break;
                    case 8:
                        i0(bVar, b0, readInt);
                        break;
                    default:
                        this.b.skip((long) b0);
                        break;
                }
                return true;
            }
            ti0.c("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            throw null;
        } catch (IOException unused2) {
            return false;
        }
    }
}
