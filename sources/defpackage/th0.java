package defpackage;

import defpackage.ch0;
import defpackage.eh0;
import defpackage.lh0;
import defpackage.vh0;
import java.io.IOException;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.protocol.HTTP;

/* renamed from: th0  reason: default package */
public final class th0 implements eh0 {
    final wh0 a;

    public th0(wh0 wh0) {
        this.a = wh0;
    }

    static boolean a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    static boolean b(String str) {
        return !"Connection".equalsIgnoreCase(str) && !HTTP.CONN_KEEP_ALIVE.equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !HttpHeaders.TE.equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !HttpHeaders.UPGRADE.equalsIgnoreCase(str);
    }

    private static lh0 c(lh0 lh0) {
        if (lh0 == null || lh0.j() == null) {
            return lh0;
        }
        lh0.a k0 = lh0.k0();
        k0.b(null);
        return k0.c();
    }

    @Override // defpackage.eh0
    public lh0 intercept(eh0.a aVar) {
        qk0 a2;
        wh0 wh0 = this.a;
        lh0 e = wh0 != null ? wh0.e(((ji0) aVar).i()) : null;
        ji0 ji0 = (ji0) aVar;
        vh0 a3 = new vh0.a(System.currentTimeMillis(), ji0.i(), e).a();
        jh0 jh0 = a3.a;
        lh0 lh0 = a3.b;
        wh0 wh02 = this.a;
        if (wh02 != null) {
            wh02.b(a3);
        }
        if (e != null && lh0 == null) {
            rh0.g(e.j());
        }
        if (jh0 == null && lh0 == null) {
            lh0.a aVar2 = new lh0.a();
            aVar2.o(ji0.i());
            aVar2.m(hh0.HTTP_1_1);
            aVar2.f(HttpStatus.SC_GATEWAY_TIMEOUT);
            aVar2.j("Unsatisfiable Request (only-if-cached)");
            aVar2.b(rh0.c);
            aVar2.p(-1);
            aVar2.n(System.currentTimeMillis());
            return aVar2.c();
        } else if (jh0 == null) {
            lh0.a k0 = lh0.k0();
            k0.d(c(lh0));
            return k0.c();
        } else {
            try {
                lh0 f = ji0.f(jh0);
                if (f == null && e != null) {
                }
                int i = 0;
                if (lh0 != null) {
                    if (f.L() == 304) {
                        lh0.a k02 = lh0.k0();
                        ch0 b0 = lh0.b0();
                        ch0 b02 = f.b0();
                        ch0.a aVar3 = new ch0.a();
                        int f2 = b0.f();
                        for (int i2 = 0; i2 < f2; i2++) {
                            String d = b0.d(i2);
                            String g = b0.g(i2);
                            if ((!HttpHeaders.WARNING.equalsIgnoreCase(d) || !g.startsWith("1")) && (a(d) || !b(d) || b02.c(d) == null)) {
                                ph0.a.b(aVar3, d, g);
                            }
                        }
                        int f3 = b02.f();
                        while (i < f3) {
                            String d2 = b02.d(i);
                            if (!a(d2) && b(d2)) {
                                ph0.a.b(aVar3, d2, b02.g(i));
                            }
                            i++;
                        }
                        k02.i(aVar3.b());
                        k02.p(f.o0());
                        k02.n(f.m0());
                        k02.d(c(lh0));
                        k02.k(c(f));
                        lh0 c = k02.c();
                        f.j().close();
                        this.a.a();
                        this.a.f(lh0, c);
                        return c;
                    }
                    rh0.g(lh0.j());
                }
                lh0.a k03 = f.k0();
                k03.d(c(lh0));
                k03.k(c(f));
                lh0 c2 = k03.c();
                if (this.a != null) {
                    if (!ii0.b(c2) || !vh0.a(c2, jh0)) {
                        String f4 = jh0.f();
                        if (f4.equals(HttpPost.METHOD_NAME) || f4.equals("PATCH") || f4.equals(HttpPut.METHOD_NAME) || f4.equals(HttpDelete.METHOD_NAME) || f4.equals("MOVE")) {
                            i = 1;
                        }
                        if (i != 0) {
                            try {
                                this.a.c(jh0);
                            } catch (IOException unused) {
                            }
                        }
                    } else {
                        uh0 d3 = this.a.d(c2);
                        if (d3 == null || (a2 = d3.a()) == null) {
                            return c2;
                        }
                        sh0 sh0 = new sh0(this, c2.j().source(), d3, ik0.b(a2));
                        String V = c2.V("Content-Type");
                        long contentLength = c2.j().contentLength();
                        lh0.a k04 = c2.k0();
                        k04.b(new ki0(V, contentLength, ik0.c(sh0)));
                        return k04.c();
                    }
                }
                return c2;
            } finally {
                if (e != null) {
                    rh0.g(e.j());
                }
            }
        }
    }
}
