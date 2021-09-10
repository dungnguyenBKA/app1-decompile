package defpackage;

import androidx.core.app.b;
import defpackage.eh0;
import defpackage.jh0;
import defpackage.lh0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Objects;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;

/* renamed from: mi0  reason: default package */
public final class mi0 implements eh0 {
    private final gh0 a;
    private volatile di0 b;
    private Object c;
    private volatile boolean d;

    public mi0(gh0 gh0, boolean z) {
        this.a = gh0;
    }

    private kg0 b(dh0 dh0) {
        qg0 qg0;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (dh0.k()) {
            SSLSocketFactory t = this.a.t();
            hostnameVerifier = this.a.i();
            sSLSocketFactory = t;
            qg0 = this.a.b();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            qg0 = null;
        }
        return new kg0(dh0.j(), dh0.t(), this.a.f(), this.a.s(), sSLSocketFactory, hostnameVerifier, qg0, this.a.p(), this.a.n(), this.a.m(), this.a.d(), this.a.q());
    }

    private jh0 c(lh0 lh0, nh0 nh0) {
        String V;
        dh0 x;
        int L = lh0.L();
        String f = lh0.n0().f();
        kh0 kh0 = null;
        if (L == 307 || L == 308) {
            if (!f.equals(HttpGet.METHOD_NAME) && !f.equals(HttpHead.METHOD_NAME)) {
                return null;
            }
        } else if (L == 401) {
            Objects.requireNonNull(this.a.a());
            return null;
        } else if (L != 503) {
            if (L != 407) {
                if (L != 408) {
                    switch (L) {
                        case HttpStatus.SC_MULTIPLE_CHOICES /*{ENCODED_INT: 300}*/:
                        case HttpStatus.SC_MOVED_PERMANENTLY /*{ENCODED_INT: 301}*/:
                        case HttpStatus.SC_MOVED_TEMPORARILY /*{ENCODED_INT: 302}*/:
                        case HttpStatus.SC_SEE_OTHER /*{ENCODED_INT: 303}*/:
                            break;
                        default:
                            return null;
                    }
                } else if (!this.a.r()) {
                    return null;
                } else {
                    lh0.n0().a();
                    if ((lh0.l0() == null || lh0.l0().L() != 408) && f(lh0, 0) <= 0) {
                        return lh0.n0();
                    }
                    return null;
                }
            } else if (nh0.b().type() == Proxy.Type.HTTP) {
                Objects.requireNonNull(this.a.p());
                return null;
            } else {
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
        } else if ((lh0.l0() == null || lh0.l0().L() != 503) && f(lh0, Integer.MAX_VALUE) == 0) {
            return lh0.n0();
        } else {
            return null;
        }
        if (!this.a.g() || (V = lh0.V(HttpHeaders.LOCATION)) == null || (x = lh0.n0().h().x(V)) == null) {
            return null;
        }
        if (!x.y().equals(lh0.n0().h().y()) && !this.a.h()) {
            return null;
        }
        jh0.a g = lh0.n0().g();
        if (b.o0(f)) {
            boolean equals = f.equals("PROPFIND");
            if (!f.equals("PROPFIND")) {
                g.e(HttpGet.METHOD_NAME, null);
            } else {
                if (equals) {
                    kh0 = lh0.n0().a();
                }
                g.e(f, kh0);
            }
            if (!equals) {
                g.f("Transfer-Encoding");
                g.f("Content-Length");
                g.f("Content-Type");
            }
        }
        if (!g(lh0, x)) {
            g.f("Authorization");
        }
        g.h(x);
        return g.b();
    }

    private boolean e(IOException iOException, di0 di0, boolean z, jh0 jh0) {
        di0.m(iOException);
        if (!this.a.r()) {
            return false;
        }
        if (z && (iOException instanceof FileNotFoundException)) {
            return false;
        }
        if ((!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) : (iOException instanceof SocketTimeoutException) && !z)) && di0.g()) {
            return true;
        }
        return false;
    }

    private int f(lh0 lh0, int i) {
        String V = lh0.V(HttpHeaders.RETRY_AFTER);
        if (V == null) {
            return i;
        }
        if (V.matches("\\d+")) {
            return Integer.valueOf(V).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean g(lh0 lh0, dh0 dh0) {
        dh0 h = lh0.n0().h();
        return h.j().equals(dh0.j()) && h.t() == dh0.t() && h.y().equals(dh0.y());
    }

    public void a() {
        this.d = true;
        di0 di0 = this.b;
        if (di0 != null) {
            di0.b();
        }
    }

    public boolean d() {
        return this.d;
    }

    public void h(Object obj) {
        this.c = obj;
    }

    @Override // defpackage.eh0
    public lh0 intercept(eh0.a aVar) {
        ji0 ji0 = (ji0) aVar;
        jh0 i = ji0.i();
        og0 a2 = ji0.a();
        zg0 d2 = ji0.d();
        di0 di0 = new di0(this.a.c(), b(i.h()), a2, d2, this.c);
        this.b = di0;
        int i2 = 0;
        lh0 lh0 = null;
        while (!this.d) {
            try {
                lh0 g = ji0.g(i, di0, null, null);
                if (lh0 != null) {
                    lh0.a k0 = g.k0();
                    lh0.a k02 = lh0.k0();
                    k02.b(null);
                    k0.l(k02.c());
                    g = k0.c();
                }
                try {
                    jh0 c2 = c(g, di0.l());
                    if (c2 == null) {
                        di0.j();
                        return g;
                    }
                    rh0.g(g.j());
                    int i3 = i2 + 1;
                    if (i3 <= 20) {
                        if (!g(g, c2.h())) {
                            di0.j();
                            di0 = new di0(this.a.c(), b(c2.h()), a2, d2, this.c);
                            this.b = di0;
                        } else if (di0.c() != null) {
                            throw new IllegalStateException("Closing the body of " + g + " didn't close its backing stream. Bad interceptor?");
                        }
                        lh0 = g;
                        i = c2;
                        i2 = i3;
                    } else {
                        di0.j();
                        throw new ProtocolException(ic.f("Too many follow-up requests: ", i3));
                    }
                } catch (IOException e) {
                    di0.j();
                    throw e;
                }
            } catch (bi0 e2) {
                if (!e(e2.c(), di0, false, i)) {
                    throw e2.b();
                }
            } catch (IOException e3) {
                if (!e(e3, di0, !(e3 instanceof pi0), i)) {
                    throw e3;
                }
            } catch (Throwable th) {
                di0.m(null);
                di0.j();
                throw th;
            }
        }
        di0.j();
        throw new IOException("Canceled");
    }
}
