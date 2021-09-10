package defpackage;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: nh0  reason: default package */
public final class nh0 {
    final kg0 a;
    final Proxy b;
    final InetSocketAddress c;

    public nh0(kg0 kg0, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(kg0, "address == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.a = kg0;
        this.b = proxy;
        this.c = inetSocketAddress;
    }

    public kg0 a() {
        return this.a;
    }

    public Proxy b() {
        return this.b;
    }

    public boolean c() {
        return this.a.i != null && this.b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof nh0) {
            nh0 nh0 = (nh0) obj;
            return nh0.a.equals(this.a) && nh0.b.equals(this.b) && nh0.c.equals(this.c);
        }
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        return this.c.hashCode() + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder q = ic.q("Route{");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
