package defpackage;

import defpackage.dh0;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpHost;

/* renamed from: kg0  reason: default package */
public final class kg0 {
    final dh0 a;
    final yg0 b;
    final SocketFactory c;
    final lg0 d;
    final List<hh0> e;
    final List<ug0> f;
    final ProxySelector g;
    @Nullable
    final Proxy h;
    @Nullable
    final SSLSocketFactory i;
    @Nullable
    final HostnameVerifier j;
    @Nullable
    final qg0 k;

    public kg0(String str, int i2, yg0 yg0, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable qg0 qg0, lg0 lg0, @Nullable Proxy proxy, List<hh0> list, List<ug0> list2, ProxySelector proxySelector) {
        dh0.a aVar = new dh0.a();
        String str2 = sSLSocketFactory != null ? "https" : HttpHost.DEFAULT_SCHEME_NAME;
        if (str2.equalsIgnoreCase(HttpHost.DEFAULT_SCHEME_NAME)) {
            aVar.a = HttpHost.DEFAULT_SCHEME_NAME;
        } else if (str2.equalsIgnoreCase("https")) {
            aVar.a = "https";
        } else {
            throw new IllegalArgumentException(ic.i("unexpected scheme: ", str2));
        }
        Objects.requireNonNull(str, "host == null");
        String d2 = rh0.d(dh0.p(str, 0, str.length(), false));
        if (d2 != null) {
            aVar.d = d2;
            if (i2 <= 0 || i2 > 65535) {
                throw new IllegalArgumentException(ic.f("unexpected port: ", i2));
            }
            aVar.e = i2;
            this.a = aVar.b();
            Objects.requireNonNull(yg0, "dns == null");
            this.b = yg0;
            Objects.requireNonNull(socketFactory, "socketFactory == null");
            this.c = socketFactory;
            Objects.requireNonNull(lg0, "proxyAuthenticator == null");
            this.d = lg0;
            Objects.requireNonNull(list, "protocols == null");
            this.e = rh0.q(list);
            Objects.requireNonNull(list2, "connectionSpecs == null");
            this.f = rh0.q(list2);
            Objects.requireNonNull(proxySelector, "proxySelector == null");
            this.g = proxySelector;
            this.h = proxy;
            this.i = sSLSocketFactory;
            this.j = hostnameVerifier;
            this.k = qg0;
            return;
        }
        throw new IllegalArgumentException(ic.i("unexpected host: ", str));
    }

    @Nullable
    public qg0 a() {
        return this.k;
    }

    public List<ug0> b() {
        return this.f;
    }

    public yg0 c() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public boolean d(kg0 kg0) {
        return this.b.equals(kg0.b) && this.d.equals(kg0.d) && this.e.equals(kg0.e) && this.f.equals(kg0.f) && this.g.equals(kg0.g) && rh0.n(this.h, kg0.h) && rh0.n(this.i, kg0.i) && rh0.n(this.j, kg0.j) && rh0.n(this.k, kg0.k) && this.a.e == kg0.a.e;
    }

    @Nullable
    public HostnameVerifier e() {
        return this.j;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof kg0) {
            kg0 kg0 = (kg0) obj;
            return this.a.equals(kg0.a) && d(kg0);
        }
    }

    public List<hh0> f() {
        return this.e;
    }

    @Nullable
    public Proxy g() {
        return this.h;
    }

    public lg0 h() {
        return this.d;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        int hashCode2 = (this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Proxy proxy = this.h;
        int i2 = 0;
        int hashCode3 = (hashCode2 + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.i;
        int hashCode4 = (hashCode3 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.j;
        int hashCode5 = (hashCode4 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        qg0 qg0 = this.k;
        if (qg0 != null) {
            i2 = qg0.hashCode();
        }
        return hashCode5 + i2;
    }

    public ProxySelector i() {
        return this.g;
    }

    public SocketFactory j() {
        return this.c;
    }

    @Nullable
    public SSLSocketFactory k() {
        return this.i;
    }

    public dh0 l() {
        return this.a;
    }

    public String toString() {
        StringBuilder q = ic.q("Address{");
        q.append(this.a.d);
        q.append(":");
        q.append(this.a.e);
        if (this.h != null) {
            q.append(", proxy=");
            q.append(this.h);
        } else {
            q.append(", proxySelector=");
            q.append(this.g);
        }
        q.append("}");
        return q.toString();
    }
}
