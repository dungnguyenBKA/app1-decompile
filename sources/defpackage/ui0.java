package defpackage;

import defpackage.aj0;
import defpackage.ch0;
import defpackage.eh0;
import defpackage.lh0;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* renamed from: ui0  reason: default package */
public final class ui0 implements gi0 {
    private static final List<String> f = rh0.r("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    private static final List<String> g = rh0.r("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    private final eh0.a a;
    final di0 b;
    private final vi0 c;
    private aj0 d;
    private final hh0 e;

    /* renamed from: ui0$a */
    class a extends dk0 {
        boolean b = false;
        long c = 0;

        a(rk0 rk0) {
            super(rk0);
        }

        private void j(IOException iOException) {
            if (!this.b) {
                this.b = true;
                ui0 ui0 = ui0.this;
                ui0.b.n(false, ui0, this.c, iOException);
            }
        }

        @Override // defpackage.rk0, java.io.Closeable, defpackage.dk0, java.lang.AutoCloseable
        public void close() {
            super.close();
            j(null);
        }

        @Override // defpackage.rk0, defpackage.dk0
        public long read(xj0 xj0, long j) {
            try {
                long read = delegate().read(xj0, j);
                if (read > 0) {
                    this.c += read;
                }
                return read;
            } catch (IOException e) {
                j(e);
                throw e;
            }
        }
    }

    public ui0(gh0 gh0, eh0.a aVar, di0 di0, vi0 vi0) {
        this.a = aVar;
        this.b = di0;
        this.c = vi0;
        List<hh0> m = gh0.m();
        hh0 hh0 = hh0.H2_PRIOR_KNOWLEDGE;
        this.e = !m.contains(hh0) ? hh0.HTTP_2 : hh0;
    }

    @Override // defpackage.gi0
    public void a() {
        ((aj0.a) this.d.g()).close();
    }

    @Override // defpackage.gi0
    public void b(jh0 jh0) {
        if (this.d == null) {
            boolean z = jh0.a() != null;
            ch0 d2 = jh0.d();
            ArrayList arrayList = new ArrayList(d2.f() + 4);
            arrayList.add(new ri0(ri0.f, jh0.f()));
            arrayList.add(new ri0(ri0.g, li0.a(jh0.h())));
            String c2 = jh0.c("Host");
            if (c2 != null) {
                arrayList.add(new ri0(ri0.i, c2));
            }
            arrayList.add(new ri0(ri0.h, jh0.h().y()));
            int f2 = d2.f();
            for (int i = 0; i < f2; i++) {
                ak0 e2 = ak0.e(d2.d(i).toLowerCase(Locale.US));
                if (!f.contains(e2.q())) {
                    arrayList.add(new ri0(e2, d2.g(i)));
                }
            }
            aj0 r0 = this.c.r0(arrayList, z);
            this.d = r0;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            r0.i.g((long) ((ji0) this.a).h(), timeUnit);
            this.d.j.g((long) ((ji0) this.a).k(), timeUnit);
        }
    }

    @Override // defpackage.gi0
    public mh0 c(lh0 lh0) {
        Objects.requireNonNull(this.b.f);
        return new ki0(lh0.V("Content-Type"), ii0.a(lh0), ik0.c(new a(this.d.h())));
    }

    @Override // defpackage.gi0
    public void cancel() {
        aj0 aj0 = this.d;
        if (aj0 != null) {
            aj0.f(qi0.CANCEL);
        }
    }

    @Override // defpackage.gi0
    public lh0.a d(boolean z) {
        ch0 n = this.d.n();
        hh0 hh0 = this.e;
        ch0.a aVar = new ch0.a();
        int f2 = n.f();
        ni0 ni0 = null;
        for (int i = 0; i < f2; i++) {
            String d2 = n.d(i);
            String g2 = n.g(i);
            if (d2.equals(":status")) {
                ni0 = ni0.a("HTTP/1.1 " + g2);
            } else if (!g.contains(d2)) {
                ph0.a.b(aVar, d2, g2);
            }
        }
        if (ni0 != null) {
            lh0.a aVar2 = new lh0.a();
            aVar2.m(hh0);
            aVar2.f(ni0.b);
            aVar2.j(ni0.c);
            aVar2.i(aVar.b());
            if (!z || ph0.a.d(aVar2) != 100) {
                return aVar2;
            }
            return null;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // defpackage.gi0
    public void e() {
        this.c.w.flush();
    }

    @Override // defpackage.gi0
    public qk0 f(jh0 jh0, long j) {
        return this.d.g();
    }
}
