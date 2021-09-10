package defpackage;

import defpackage.eh0;
import defpackage.jh0;
import defpackage.lh0;
import defpackage.vi0;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HTTP;

/* renamed from: zh0  reason: default package */
public final class zh0 extends vi0.j implements sg0 {
    private final tg0 b;
    private final nh0 c;
    private Socket d;
    private Socket e;
    private bh0 f;
    private hh0 g;
    private vi0 h;
    private zj0 i;
    private yj0 j;
    public boolean k;
    public int l;
    public int m = 1;
    public final List<Reference<di0>> n = new ArrayList();
    public long o = Long.MAX_VALUE;

    public zh0(tg0 tg0, nh0 nh0) {
        this.b = tg0;
        this.c = nh0;
    }

    private void e(int i2, int i3, og0 og0, zg0 zg0) {
        Socket socket;
        Proxy b2 = this.c.b();
        kg0 a = this.c.a();
        if (b2.type() == Proxy.Type.DIRECT || b2.type() == Proxy.Type.HTTP) {
            socket = a.j().createSocket();
        } else {
            socket = new Socket(b2);
        }
        this.d = socket;
        this.c.d();
        Objects.requireNonNull(zg0);
        this.d.setSoTimeout(i3);
        try {
            mj0.h().g(this.d, this.c.d(), i2);
            try {
                this.i = ik0.c(ik0.j(this.d));
                this.j = ik0.b(ik0.g(this.d));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            StringBuilder q = ic.q("Failed to connect to ");
            q.append(this.c.d());
            ConnectException connectException = new ConnectException(q.toString());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void f(int i2, int i3, int i4, og0 og0, zg0 zg0) {
        jh0.a aVar = new jh0.a();
        aVar.h(this.c.a().l());
        aVar.e("CONNECT", null);
        aVar.c("Host", rh0.p(this.c.a().l(), true));
        aVar.c("Proxy-Connection", HTTP.CONN_KEEP_ALIVE);
        aVar.c("User-Agent", "okhttp/3.12.12");
        jh0 b2 = aVar.b();
        lh0.a aVar2 = new lh0.a();
        aVar2.o(b2);
        aVar2.m(hh0.HTTP_1_1);
        aVar2.f(HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED);
        aVar2.j("Preemptive Authenticate");
        aVar2.b(rh0.c);
        aVar2.p(-1);
        aVar2.n(-1);
        aVar2.h("Proxy-Authenticate", "OkHttp-Preemptive");
        aVar2.c();
        Objects.requireNonNull(this.c.a().h());
        dh0 h2 = b2.h();
        e(i2, i3, og0, zg0);
        StringBuilder q = ic.q("CONNECT ");
        q.append(rh0.p(h2, true));
        q.append(" HTTP/1.1");
        String sb = q.toString();
        zj0 zj0 = this.i;
        oi0 oi0 = new oi0(null, null, zj0, this.j);
        sk0 timeout = zj0.timeout();
        long j2 = (long) i3;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeout.g(j2, timeUnit);
        this.j.timeout().g((long) i4, timeUnit);
        oi0.k(b2.d(), sb);
        oi0.a();
        lh0.a d2 = oi0.d(false);
        d2.o(b2);
        lh0 c2 = d2.c();
        long a = ii0.a(c2);
        if (a == -1) {
            a = 0;
        }
        rk0 h3 = oi0.h(a);
        rh0.w(h3, Integer.MAX_VALUE, timeUnit);
        h3.close();
        int L = c2.L();
        if (L != 200) {
            if (L == 407) {
                Objects.requireNonNull(this.c.a().h());
                throw new IOException("Failed to authenticate with proxy");
            }
            StringBuilder q2 = ic.q("Unexpected response code for CONNECT: ");
            q2.append(c2.L());
            throw new IOException(q2.toString());
        } else if (!this.i.a().t() || !this.j.a().t()) {
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x016e A[Catch:{ all -> 0x0165 }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0174 A[Catch:{ all -> 0x0165 }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0178  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void g(defpackage.yh0 r7, int r8, defpackage.og0 r9, defpackage.zg0 r10) {
        /*
        // Method dump skipped, instructions count: 387
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zh0.g(yh0, int, og0, zg0):void");
    }

    private void o(int i2) {
        this.e.setSoTimeout(0);
        vi0.h hVar = new vi0.h(true);
        hVar.d(this.e, this.c.a().l().j(), this.i, this.j);
        hVar.b(this);
        hVar.c(i2);
        vi0 a = hVar.a();
        this.h = a;
        a.B0();
    }

    @Override // defpackage.vi0.j
    public void a(vi0 vi0) {
        synchronized (this.b) {
            this.m = vi0.q0();
        }
    }

    @Override // defpackage.vi0.j
    public void b(aj0 aj0) {
        aj0.d(qi0.REFUSED_STREAM);
    }

    public void c() {
        rh0.h(this.d);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0081 A[Catch:{ IOException -> 0x00e1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0112  */
    /* JADX WARNING: Removed duplicated region for block: B:65:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d(int r14, int r15, int r16, int r17, boolean r18, defpackage.og0 r19, defpackage.zg0 r20) {
        /*
        // Method dump skipped, instructions count: 311
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zh0.d(int, int, int, int, boolean, og0, zg0):void");
    }

    public bh0 h() {
        return this.f;
    }

    public boolean i(kg0 kg0, @Nullable nh0 nh0) {
        if (this.n.size() >= this.m || this.k || !ph0.a.g(this.c.a(), kg0)) {
            return false;
        }
        if (kg0.l().j().equals(this.c.a().l().j())) {
            return true;
        }
        if (this.h == null || nh0 == null || nh0.b().type() != Proxy.Type.DIRECT || this.c.b().type() != Proxy.Type.DIRECT || !this.c.d().equals(nh0.d()) || nh0.a().e() != rj0.a || !p(kg0.l())) {
            return false;
        }
        try {
            kg0.a().a(kg0.l().j(), this.f.c());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    /* JADX INFO: finally extract failed */
    public boolean j(boolean z) {
        if (this.e.isClosed() || this.e.isInputShutdown() || this.e.isOutputShutdown()) {
            return false;
        }
        vi0 vi0 = this.h;
        if (vi0 != null) {
            return vi0.p0(System.nanoTime());
        }
        if (z) {
            try {
                int soTimeout = this.e.getSoTimeout();
                try {
                    this.e.setSoTimeout(1);
                    if (this.i.t()) {
                        this.e.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.e.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th) {
                    this.e.setSoTimeout(soTimeout);
                    throw th;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean k() {
        return this.h != null;
    }

    public gi0 l(gh0 gh0, eh0.a aVar, di0 di0) {
        if (this.h != null) {
            return new ui0(gh0, aVar, di0, this.h);
        }
        ji0 ji0 = (ji0) aVar;
        this.e.setSoTimeout(ji0.h());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.i.timeout().g((long) ji0.h(), timeUnit);
        this.j.timeout().g((long) ji0.k(), timeUnit);
        return new oi0(gh0, di0, this.i, this.j);
    }

    public nh0 m() {
        return this.c;
    }

    public Socket n() {
        return this.e;
    }

    public boolean p(dh0 dh0) {
        if (dh0.t() != this.c.a().l().t()) {
            return false;
        }
        if (dh0.j().equals(this.c.a().l().j())) {
            return true;
        }
        if (this.f == null || !rj0.a.c(dh0.j(), (X509Certificate) this.f.c().get(0))) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder q = ic.q("Connection{");
        q.append(this.c.a().l().j());
        q.append(":");
        q.append(this.c.a().l().t());
        q.append(", proxy=");
        q.append(this.c.b());
        q.append(" hostAddress=");
        q.append(this.c.d());
        q.append(" cipherSuite=");
        bh0 bh0 = this.f;
        q.append(bh0 != null ? bh0.a() : "none");
        q.append(" protocol=");
        q.append(this.g);
        q.append('}');
        return q.toString();
    }
}
