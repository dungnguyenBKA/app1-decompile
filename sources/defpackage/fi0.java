package defpackage;

import androidx.core.app.b;
import com.vungle.warren.ui.JavascriptBridge;
import defpackage.eh0;
import defpackage.lh0;
import java.net.ProtocolException;
import java.util.Objects;
import org.apache.http.protocol.HTTP;

/* renamed from: fi0  reason: default package */
public final class fi0 implements eh0 {
    private final boolean a;

    /* renamed from: fi0$a */
    static final class a extends ck0 {
        long c;

        a(qk0 qk0) {
            super(qk0);
        }

        @Override // defpackage.qk0, defpackage.ck0
        public void H(xj0 xj0, long j) {
            super.H(xj0, j);
            this.c += j;
        }
    }

    public fi0(boolean z) {
        this.a = z;
    }

    @Override // defpackage.eh0
    public lh0 intercept(eh0.a aVar) {
        lh0 lh0;
        ji0 ji0 = (ji0) aVar;
        gi0 e = ji0.e();
        di0 j = ji0.j();
        zh0 zh0 = (zh0) ji0.c();
        jh0 i = ji0.i();
        long currentTimeMillis = System.currentTimeMillis();
        Objects.requireNonNull(ji0.d());
        e.b(i);
        Objects.requireNonNull(ji0.d());
        lh0.a aVar2 = null;
        if (b.o0(i.f()) && i.a() != null) {
            if (HTTP.EXPECT_CONTINUE.equalsIgnoreCase(i.c("Expect"))) {
                e.e();
                Objects.requireNonNull(ji0.d());
                aVar2 = e.d(true);
            }
            if (aVar2 == null) {
                Objects.requireNonNull(ji0.d());
                yj0 b = ik0.b(new a(e.f(i, i.a().contentLength())));
                i.a().writeTo(b);
                b.close();
                Objects.requireNonNull(ji0.d());
            } else if (!zh0.k()) {
                j.i();
            }
        }
        e.a();
        if (aVar2 == null) {
            Objects.requireNonNull(ji0.d());
            aVar2 = e.d(false);
        }
        aVar2.o(i);
        aVar2.g(j.d().h());
        aVar2.p(currentTimeMillis);
        aVar2.n(System.currentTimeMillis());
        lh0 c = aVar2.c();
        int L = c.L();
        if (L == 100) {
            lh0.a d = e.d(false);
            d.o(i);
            d.g(j.d().h());
            d.p(currentTimeMillis);
            d.n(System.currentTimeMillis());
            c = d.c();
            L = c.L();
        }
        Objects.requireNonNull(ji0.d());
        if (!this.a || L != 101) {
            lh0.a k0 = c.k0();
            k0.b(e.c(c));
            lh0 = k0.c();
        } else {
            lh0.a k02 = c.k0();
            k02.b(rh0.c);
            lh0 = k02.c();
        }
        if (JavascriptBridge.MraidHandler.CLOSE_ACTION.equalsIgnoreCase(lh0.n0().c("Connection")) || JavascriptBridge.MraidHandler.CLOSE_ACTION.equalsIgnoreCase(lh0.V("Connection"))) {
            j.i();
        }
        if ((L != 204 && L != 205) || lh0.j().contentLength() <= 0) {
            return lh0;
        }
        throw new ProtocolException("HTTP " + L + " had non-zero Content-Length: " + lh0.j().contentLength());
    }
}
