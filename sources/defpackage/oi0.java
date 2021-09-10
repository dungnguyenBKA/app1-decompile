package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.ch0;
import defpackage.lh0;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;

/* renamed from: oi0  reason: default package */
public final class oi0 implements gi0 {
    final gh0 a;
    final di0 b;
    final zj0 c;
    final yj0 d;
    int e = 0;
    private long f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    /* renamed from: oi0$b */
    private abstract class b implements rk0 {
        protected final ek0 b;
        protected boolean c;
        protected long d = 0;

        b(a aVar) {
            this.b = new ek0(oi0.this.c.timeout());
        }

        /* access modifiers changed from: protected */
        public final void j(boolean z, IOException iOException) {
            oi0 oi0 = oi0.this;
            int i = oi0.e;
            if (i != 6) {
                if (i == 5) {
                    oi0.g(this.b);
                    oi0 oi02 = oi0.this;
                    oi02.e = 6;
                    di0 di0 = oi02.b;
                    if (di0 != null) {
                        di0.n(!z, oi02, this.d, iOException);
                        return;
                    }
                    return;
                }
                StringBuilder q = ic.q("state: ");
                q.append(oi0.this.e);
                throw new IllegalStateException(q.toString());
            }
        }

        @Override // defpackage.rk0
        public long read(xj0 xj0, long j) {
            try {
                long read = oi0.this.c.read(xj0, j);
                if (read > 0) {
                    this.d += read;
                }
                return read;
            } catch (IOException e2) {
                j(false, e2);
                throw e2;
            }
        }

        @Override // defpackage.rk0
        public sk0 timeout() {
            return this.b;
        }
    }

    /* renamed from: oi0$c */
    private final class c implements qk0 {
        private final ek0 b;
        private boolean c;

        c() {
            this.b = new ek0(oi0.this.d.timeout());
        }

        @Override // defpackage.qk0
        public void H(xj0 xj0, long j) {
            if (this.c) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                oi0.this.d.J(j);
                oi0.this.d.C("\r\n");
                oi0.this.d.H(xj0, j);
                oi0.this.d.C("\r\n");
            }
        }

        @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (!this.c) {
                this.c = true;
                oi0.this.d.C("0\r\n\r\n");
                oi0.this.g(this.b);
                oi0.this.e = 3;
            }
        }

        @Override // defpackage.qk0, java.io.Flushable
        public synchronized void flush() {
            if (!this.c) {
                oi0.this.d.flush();
            }
        }

        @Override // defpackage.qk0
        public sk0 timeout() {
            return this.b;
        }
    }

    /* renamed from: oi0$d */
    private class d extends b {
        private final dh0 f;
        private long g = -1;
        private boolean h = true;

        d(dh0 dh0) {
            super(null);
            this.f = dh0;
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.c) {
                if (this.h && !rh0.m(this, 100, TimeUnit.MILLISECONDS)) {
                    j(false, null);
                }
                this.c = true;
            }
        }

        @Override // defpackage.rk0, defpackage.oi0.b
        public long read(xj0 xj0, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.c) {
                throw new IllegalStateException("closed");
            } else if (!this.h) {
                return -1;
            } else {
                long j2 = this.g;
                if (j2 == 0 || j2 == -1) {
                    if (j2 != -1) {
                        oi0.this.c.O();
                    }
                    try {
                        this.g = oi0.this.c.f0();
                        String trim = oi0.this.c.O().trim();
                        if (this.g < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                            throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.g + trim + "\"");
                        }
                        if (this.g == 0) {
                            this.h = false;
                            ii0.d(oi0.this.a.e(), this.f, oi0.this.j());
                            j(true, null);
                        }
                        if (!this.h) {
                            return -1;
                        }
                    } catch (NumberFormatException e) {
                        throw new ProtocolException(e.getMessage());
                    }
                }
                long read = super.read(xj0, Math.min(j, this.g));
                if (read != -1) {
                    this.g -= read;
                    return read;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                j(false, protocolException);
                throw protocolException;
            }
        }
    }

    /* renamed from: oi0$e */
    private final class e implements qk0 {
        private final ek0 b;
        private boolean c;
        private long d;

        e(long j) {
            this.b = new ek0(oi0.this.d.timeout());
            this.d = j;
        }

        @Override // defpackage.qk0
        public void H(xj0 xj0, long j) {
            if (!this.c) {
                rh0.f(xj0.size(), 0, j);
                if (j <= this.d) {
                    oi0.this.d.H(xj0, j);
                    this.d -= j;
                    return;
                }
                StringBuilder q = ic.q("expected ");
                q.append(this.d);
                q.append(" bytes but received ");
                q.append(j);
                throw new ProtocolException(q.toString());
            }
            throw new IllegalStateException("closed");
        }

        @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.c) {
                this.c = true;
                if (this.d <= 0) {
                    oi0.this.g(this.b);
                    oi0.this.e = 3;
                    return;
                }
                throw new ProtocolException("unexpected end of stream");
            }
        }

        @Override // defpackage.qk0, java.io.Flushable
        public void flush() {
            if (!this.c) {
                oi0.this.d.flush();
            }
        }

        @Override // defpackage.qk0
        public sk0 timeout() {
            return this.b;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: oi0$f */
    public class f extends b {
        private long f;

        f(oi0 oi0, long j) {
            super(null);
            this.f = j;
            if (j == 0) {
                j(true, null);
            }
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.c) {
                if (this.f != 0 && !rh0.m(this, 100, TimeUnit.MILLISECONDS)) {
                    j(false, null);
                }
                this.c = true;
            }
        }

        @Override // defpackage.rk0, defpackage.oi0.b
        public long read(xj0 xj0, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (!this.c) {
                long j2 = this.f;
                if (j2 == 0) {
                    return -1;
                }
                long read = super.read(xj0, Math.min(j2, j));
                if (read != -1) {
                    long j3 = this.f - read;
                    this.f = j3;
                    if (j3 == 0) {
                        j(true, null);
                    }
                    return read;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                j(false, protocolException);
                throw protocolException;
            } else {
                throw new IllegalStateException("closed");
            }
        }
    }

    /* renamed from: oi0$g */
    private class g extends b {
        private boolean f;

        g(oi0 oi0) {
            super(null);
        }

        @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.c) {
                if (!this.f) {
                    j(false, null);
                }
                this.c = true;
            }
        }

        @Override // defpackage.rk0, defpackage.oi0.b
        public long read(xj0 xj0, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.c) {
                throw new IllegalStateException("closed");
            } else if (this.f) {
                return -1;
            } else {
                long read = super.read(xj0, j);
                if (read != -1) {
                    return read;
                }
                this.f = true;
                j(true, null);
                return -1;
            }
        }
    }

    public oi0(gh0 gh0, di0 di0, zj0 zj0, yj0 yj0) {
        this.a = gh0;
        this.b = di0;
        this.c = zj0;
        this.d = yj0;
    }

    private String i() {
        String y = this.c.y(this.f);
        this.f -= (long) y.length();
        return y;
    }

    @Override // defpackage.gi0
    public void a() {
        this.d.flush();
    }

    @Override // defpackage.gi0
    public void b(jh0 jh0) {
        Proxy.Type type = this.b.d().m().b().type();
        StringBuilder sb = new StringBuilder();
        sb.append(jh0.f());
        sb.append(' ');
        if (!jh0.e() && type == Proxy.Type.HTTP) {
            sb.append(jh0.h());
        } else {
            sb.append(li0.a(jh0.h()));
        }
        sb.append(" HTTP/1.1");
        k(jh0.d(), sb.toString());
    }

    @Override // defpackage.gi0
    public mh0 c(lh0 lh0) {
        Objects.requireNonNull(this.b.f);
        String V = lh0.V("Content-Type");
        if (!ii0.b(lh0)) {
            return new ki0(V, 0, ik0.c(h(0)));
        }
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(lh0.V("Transfer-Encoding"))) {
            dh0 h = lh0.n0().h();
            if (this.e == 4) {
                this.e = 5;
                return new ki0(V, -1, ik0.c(new d(h)));
            }
            StringBuilder q = ic.q("state: ");
            q.append(this.e);
            throw new IllegalStateException(q.toString());
        }
        long a2 = ii0.a(lh0);
        if (a2 != -1) {
            return new ki0(V, a2, ik0.c(h(a2)));
        }
        if (this.e == 4) {
            di0 di0 = this.b;
            if (di0 != null) {
                this.e = 5;
                di0.i();
                return new ki0(V, -1, ik0.c(new g(this)));
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        StringBuilder q2 = ic.q("state: ");
        q2.append(this.e);
        throw new IllegalStateException(q2.toString());
    }

    @Override // defpackage.gi0
    public void cancel() {
        zh0 d2 = this.b.d();
        if (d2 != null) {
            d2.c();
        }
    }

    @Override // defpackage.gi0
    public lh0.a d(boolean z) {
        int i = this.e;
        if (i == 1 || i == 3) {
            try {
                ni0 a2 = ni0.a(i());
                lh0.a aVar = new lh0.a();
                aVar.m(a2.a);
                aVar.f(a2.b);
                aVar.j(a2.c);
                aVar.i(j());
                if (z && a2.b == 100) {
                    return null;
                }
                if (a2.b == 100) {
                    this.e = 3;
                    return aVar;
                }
                this.e = 4;
                return aVar;
            } catch (EOFException e2) {
                StringBuilder q = ic.q("unexpected end of stream on ");
                q.append(this.b);
                IOException iOException = new IOException(q.toString());
                iOException.initCause(e2);
                throw iOException;
            }
        } else {
            StringBuilder q2 = ic.q("state: ");
            q2.append(this.e);
            throw new IllegalStateException(q2.toString());
        }
    }

    @Override // defpackage.gi0
    public void e() {
        this.d.flush();
    }

    @Override // defpackage.gi0
    public qk0 f(jh0 jh0, long j) {
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(jh0.c("Transfer-Encoding"))) {
            if (this.e == 1) {
                this.e = 2;
                return new c();
            }
            StringBuilder q = ic.q("state: ");
            q.append(this.e);
            throw new IllegalStateException(q.toString());
        } else if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        } else if (this.e == 1) {
            this.e = 2;
            return new e(j);
        } else {
            StringBuilder q2 = ic.q("state: ");
            q2.append(this.e);
            throw new IllegalStateException(q2.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public void g(ek0 ek0) {
        sk0 i = ek0.i();
        ek0.j(sk0.d);
        i.a();
        i.b();
    }

    public rk0 h(long j) {
        if (this.e == 4) {
            this.e = 5;
            return new f(this, j);
        }
        StringBuilder q = ic.q("state: ");
        q.append(this.e);
        throw new IllegalStateException(q.toString());
    }

    public ch0 j() {
        ch0.a aVar = new ch0.a();
        while (true) {
            String i = i();
            if (i.length() == 0) {
                return aVar.b();
            }
            ph0.a.a(aVar, i);
        }
    }

    public void k(ch0 ch0, String str) {
        if (this.e == 0) {
            this.d.C(str).C("\r\n");
            int f2 = ch0.f();
            for (int i = 0; i < f2; i++) {
                this.d.C(ch0.d(i)).C(": ").C(ch0.g(i)).C("\r\n");
            }
            this.d.C("\r\n");
            this.e = 1;
            return;
        }
        StringBuilder q = ic.q("state: ");
        q.append(this.e);
        throw new IllegalStateException(q.toString());
    }
}
