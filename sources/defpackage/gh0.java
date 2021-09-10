package defpackage;

import defpackage.ch0;
import defpackage.lh0;
import defpackage.og0;
import defpackage.rg0;
import defpackage.zg0;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: gh0  reason: default package */
public class gh0 implements Cloneable, og0.a {
    static final List<hh0> C = rh0.r(hh0.HTTP_2, hh0.HTTP_1_1);
    static final List<ug0> D = rh0.r(ug0.g, ug0.h);
    final int A;
    final int B;
    final xg0 b;
    @Nullable
    final Proxy c;
    final List<hh0> d;
    final List<ug0> e;
    final List<eh0> f;
    final List<eh0> g;
    final zg0.b h;
    final ProxySelector i;
    final wg0 j;
    @Nullable
    final wh0 k;
    final SocketFactory l;
    final SSLSocketFactory m;
    final qj0 n;
    final HostnameVerifier o;
    final qg0 p;
    final lg0 q;
    final lg0 r;
    final tg0 s;
    final yg0 t;
    final boolean u;
    final boolean v;
    final boolean w;
    final int x;
    final int y;
    final int z;

    /* renamed from: gh0$a */
    class a extends ph0 {
        a() {
        }

        @Override // defpackage.ph0
        public void a(ch0.a aVar, String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                aVar.a(str.substring(0, indexOf), str.substring(indexOf + 1));
            } else if (str.startsWith(":")) {
                String substring = str.substring(1);
                aVar.a.add("");
                aVar.a.add(substring.trim());
            } else {
                aVar.a.add("");
                aVar.a.add(str.trim());
            }
        }

        @Override // defpackage.ph0
        public void b(ch0.a aVar, String str, String str2) {
            aVar.a.add(str);
            aVar.a.add(str2.trim());
        }

        @Override // defpackage.ph0
        public void c(ug0 ug0, SSLSocket sSLSocket, boolean z) {
            String[] strArr;
            String[] strArr2;
            if (ug0.c != null) {
                strArr = rh0.t(rg0.b, sSLSocket.getEnabledCipherSuites(), ug0.c);
            } else {
                strArr = sSLSocket.getEnabledCipherSuites();
            }
            if (ug0.d != null) {
                strArr2 = rh0.t(rh0.o, sSLSocket.getEnabledProtocols(), ug0.d);
            } else {
                strArr2 = sSLSocket.getEnabledProtocols();
            }
            String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
            Comparator<String> comparator = rg0.b;
            byte[] bArr = rh0.a;
            int length = supportedCipherSuites.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                }
                if (((rg0.a) comparator).compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                    break;
                }
                i++;
            }
            if (z && i != -1) {
                String str = supportedCipherSuites[i];
                int length2 = strArr.length + 1;
                String[] strArr3 = new String[length2];
                System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
                strArr3[length2 - 1] = str;
                strArr = strArr3;
            }
            boolean z2 = ug0.a;
            if (!z2) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                String[] strArr4 = (String[]) strArr.clone();
                if (!z2) {
                    throw new IllegalStateException("no TLS versions for cleartext connections");
                } else if (strArr2.length != 0) {
                    String[] strArr5 = (String[]) strArr2.clone();
                    if (strArr5 != null) {
                        sSLSocket.setEnabledProtocols(strArr5);
                    }
                    if (strArr4 != null) {
                        sSLSocket.setEnabledCipherSuites(strArr4);
                    }
                } else {
                    throw new IllegalArgumentException("At least one TLS version is required");
                }
            } else {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
        }

        @Override // defpackage.ph0
        public int d(lh0.a aVar) {
            return aVar.c;
        }

        @Override // defpackage.ph0
        public boolean e(tg0 tg0, zh0 zh0) {
            return tg0.b(zh0);
        }

        @Override // defpackage.ph0
        public Socket f(tg0 tg0, kg0 kg0, di0 di0) {
            return tg0.c(kg0, di0);
        }

        @Override // defpackage.ph0
        public boolean g(kg0 kg0, kg0 kg02) {
            return kg0.d(kg02);
        }

        @Override // defpackage.ph0
        public zh0 h(tg0 tg0, kg0 kg0, di0 di0, nh0 nh0) {
            return tg0.d(kg0, di0, nh0);
        }

        @Override // defpackage.ph0
        public void i(tg0 tg0, zh0 zh0) {
            tg0.f(zh0);
        }

        @Override // defpackage.ph0
        public ai0 j(tg0 tg0) {
            return tg0.e;
        }

        @Override // defpackage.ph0
        @Nullable
        public IOException k(og0 og0, @Nullable IOException iOException) {
            return ((ih0) og0).d(iOException);
        }
    }

    static {
        ph0.a = new a();
    }

    public gh0() {
        this(new b());
    }

    public lg0 a() {
        return this.r;
    }

    public qg0 b() {
        return this.p;
    }

    public tg0 c() {
        return this.s;
    }

    public List<ug0> d() {
        return this.e;
    }

    public wg0 e() {
        return this.j;
    }

    public yg0 f() {
        return this.t;
    }

    public boolean g() {
        return this.v;
    }

    public boolean h() {
        return this.u;
    }

    public HostnameVerifier i() {
        return this.o;
    }

    public b j() {
        return new b(this);
    }

    public og0 k(jh0 jh0) {
        return ih0.c(this, jh0, false);
    }

    public int l() {
        return this.B;
    }

    public List<hh0> m() {
        return this.d;
    }

    @Nullable
    public Proxy n() {
        return this.c;
    }

    public lg0 p() {
        return this.q;
    }

    public ProxySelector q() {
        return this.i;
    }

    public boolean r() {
        return this.w;
    }

    public SocketFactory s() {
        return this.l;
    }

    public SSLSocketFactory t() {
        return this.m;
    }

    gh0(b bVar) {
        boolean z2;
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        List<ug0> list = bVar.d;
        this.e = list;
        this.f = rh0.q(bVar.e);
        this.g = rh0.q(bVar.f);
        this.h = bVar.g;
        this.i = bVar.h;
        this.j = bVar.i;
        this.k = bVar.j;
        this.l = bVar.k;
        Iterator<ug0> it = list.iterator();
        loop0:
        while (true) {
            z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                ug0 next = it.next();
                if (z2 || next.a) {
                    z2 = true;
                }
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.l;
        if (sSLSocketFactory != null || !z2) {
            this.m = sSLSocketFactory;
            this.n = bVar.m;
        } else {
            try {
                TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                instance.init((KeyStore) null);
                TrustManager[] trustManagers = instance.getTrustManagers();
                if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                    throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
                }
                X509TrustManager x509TrustManager = (X509TrustManager) trustManagers[0];
                try {
                    SSLContext i2 = mj0.h().i();
                    i2.init(null, new TrustManager[]{x509TrustManager}, null);
                    this.m = i2.getSocketFactory();
                    this.n = mj0.h().c(x509TrustManager);
                } catch (GeneralSecurityException e2) {
                    throw rh0.b("No System TLS", e2);
                }
            } catch (GeneralSecurityException e3) {
                throw rh0.b("No System TLS", e3);
            }
        }
        if (this.m != null) {
            mj0.h().e(this.m);
        }
        this.o = bVar.n;
        this.p = bVar.o.c(this.n);
        this.q = bVar.p;
        this.r = bVar.q;
        this.s = bVar.r;
        this.t = bVar.s;
        this.u = bVar.t;
        this.v = bVar.u;
        this.w = bVar.v;
        this.x = bVar.w;
        this.y = bVar.x;
        this.z = bVar.y;
        this.A = bVar.z;
        this.B = bVar.A;
        if (this.f.contains(null)) {
            StringBuilder q2 = ic.q("Null interceptor: ");
            q2.append(this.f);
            throw new IllegalStateException(q2.toString());
        } else if (this.g.contains(null)) {
            StringBuilder q3 = ic.q("Null network interceptor: ");
            q3.append(this.g);
            throw new IllegalStateException(q3.toString());
        }
    }

    /* renamed from: gh0$b */
    public static final class b {
        int A;
        xg0 a;
        @Nullable
        Proxy b;
        List<hh0> c;
        List<ug0> d;
        final List<eh0> e;
        final List<eh0> f;
        zg0.b g;
        ProxySelector h;
        wg0 i;
        @Nullable
        wh0 j;
        SocketFactory k;
        @Nullable
        SSLSocketFactory l;
        @Nullable
        qj0 m;
        HostnameVerifier n;
        qg0 o;
        lg0 p;
        lg0 q;
        tg0 r;
        yg0 s;
        boolean t;
        boolean u;
        boolean v;
        int w;
        int x;
        int y;
        int z;

        public b() {
            this.e = new ArrayList();
            this.f = new ArrayList();
            this.a = new xg0();
            this.c = gh0.C;
            this.d = gh0.D;
            this.g = new ah0(zg0.a);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.h = proxySelector;
            if (proxySelector == null) {
                this.h = new nj0();
            }
            this.i = wg0.a;
            this.k = SocketFactory.getDefault();
            this.n = rj0.a;
            this.o = qg0.c;
            lg0 lg0 = lg0.a;
            this.p = lg0;
            this.q = lg0;
            this.r = new tg0();
            this.s = yg0.a;
            this.t = true;
            this.u = true;
            this.v = true;
            this.w = 0;
            this.x = 10000;
            this.y = 10000;
            this.z = 10000;
            this.A = 0;
        }

        public b a(eh0 eh0) {
            this.e.add(eh0);
            return this;
        }

        public gh0 b() {
            return new gh0(this);
        }

        public b c(@Nullable mg0 mg0) {
            this.j = null;
            return this;
        }

        public b d(long j2, TimeUnit timeUnit) {
            this.x = rh0.e("timeout", j2, timeUnit);
            return this;
        }

        public b e(boolean z2) {
            this.u = z2;
            return this;
        }

        public b f(boolean z2) {
            this.t = z2;
            return this;
        }

        public b g(long j2, TimeUnit timeUnit) {
            this.y = rh0.e("timeout", j2, timeUnit);
            return this;
        }

        b(gh0 gh0) {
            ArrayList arrayList = new ArrayList();
            this.e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f = arrayList2;
            this.a = gh0.b;
            this.b = gh0.c;
            this.c = gh0.d;
            this.d = gh0.e;
            arrayList.addAll(gh0.f);
            arrayList2.addAll(gh0.g);
            this.g = gh0.h;
            this.h = gh0.i;
            this.i = gh0.j;
            this.j = gh0.k;
            this.k = gh0.l;
            this.l = gh0.m;
            this.m = gh0.n;
            this.n = gh0.o;
            this.o = gh0.p;
            this.p = gh0.q;
            this.q = gh0.r;
            this.r = gh0.s;
            this.s = gh0.t;
            this.t = gh0.u;
            this.u = gh0.v;
            this.v = gh0.w;
            this.w = gh0.x;
            this.x = gh0.y;
            this.y = gh0.z;
            this.z = gh0.A;
            this.A = gh0.B;
        }
    }
}
