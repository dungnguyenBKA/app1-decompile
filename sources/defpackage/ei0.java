package defpackage;

import defpackage.ch0;
import defpackage.eh0;
import defpackage.jh0;
import defpackage.lh0;
import java.util.List;
import org.apache.http.HttpHeaders;
import org.apache.http.cookie.SM;
import org.apache.http.protocol.HTTP;

/* renamed from: ei0  reason: default package */
public final class ei0 implements eh0 {
    private final wg0 a;

    public ei0(wg0 wg0) {
        this.a = wg0;
    }

    @Override // defpackage.eh0
    public lh0 intercept(eh0.a aVar) {
        boolean z;
        ji0 ji0 = (ji0) aVar;
        jh0 i = ji0.i();
        jh0.a g = i.g();
        kh0 a2 = i.a();
        if (a2 != null) {
            fh0 contentType = a2.contentType();
            if (contentType != null) {
                g.c("Content-Type", contentType.toString());
            }
            long contentLength = a2.contentLength();
            if (contentLength != -1) {
                g.c("Content-Length", Long.toString(contentLength));
                g.f("Transfer-Encoding");
            } else {
                g.c("Transfer-Encoding", HTTP.CHUNK_CODING);
                g.f("Content-Length");
            }
        }
        if (i.c("Host") == null) {
            g.c("Host", rh0.p(i.h(), false));
        }
        if (i.c("Connection") == null) {
            g.c("Connection", HTTP.CONN_KEEP_ALIVE);
        }
        if (i.c(HttpHeaders.ACCEPT_ENCODING) == null && i.c(HttpHeaders.RANGE) == null) {
            g.c(HttpHeaders.ACCEPT_ENCODING, "gzip");
            z = true;
        } else {
            z = false;
        }
        List<vg0> b = this.a.b(i.h());
        if (!b.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = b.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0) {
                    sb.append("; ");
                }
                vg0 vg0 = b.get(i2);
                sb.append(vg0.b());
                sb.append('=');
                sb.append(vg0.e());
            }
            g.c(SM.COOKIE, sb.toString());
        }
        if (i.c("User-Agent") == null) {
            g.c("User-Agent", "okhttp/3.12.12");
        }
        lh0 f = ji0.f(g.b());
        ii0.d(this.a, i.h(), f.b0());
        lh0.a k0 = f.k0();
        k0.o(i);
        if (z && "gzip".equalsIgnoreCase(f.V("Content-Encoding")) && ii0.b(f)) {
            gk0 gk0 = new gk0(f.j().source());
            ch0.a e = f.b0().e();
            e.c("Content-Encoding");
            e.c("Content-Length");
            k0.i(e.b());
            k0.b(new ki0(f.V("Content-Type"), -1, ik0.c(gk0)));
        }
        return k0.c();
    }
}
