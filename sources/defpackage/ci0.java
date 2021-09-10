package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* renamed from: ci0  reason: default package */
public final class ci0 {
    private final kg0 a;
    private final ai0 b;
    private final og0 c;
    private final zg0 d;
    private List<Proxy> e = Collections.emptyList();
    private int f;
    private List<InetSocketAddress> g = Collections.emptyList();
    private final List<nh0> h = new ArrayList();

    /* renamed from: ci0$a */
    public static final class a {
        private final List<nh0> a;
        private int b = 0;

        a(List<nh0> list) {
            this.a = list;
        }

        public List<nh0> a() {
            return new ArrayList(this.a);
        }

        public boolean b() {
            return this.b < this.a.size();
        }

        public nh0 c() {
            if (b()) {
                List<nh0> list = this.a;
                int i = this.b;
                this.b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    public ci0(kg0 kg0, ai0 ai0, og0 og0, zg0 zg0) {
        List<Proxy> list;
        this.a = kg0;
        this.b = ai0;
        this.c = og0;
        this.d = zg0;
        dh0 l = kg0.l();
        Proxy g2 = kg0.g();
        if (g2 != null) {
            this.e = Collections.singletonList(g2);
        } else {
            List<Proxy> select = kg0.i().select(l.z());
            if (select == null || select.isEmpty()) {
                list = rh0.r(Proxy.NO_PROXY);
            } else {
                list = rh0.q(select);
            }
            this.e = list;
        }
        this.f = 0;
    }

    private boolean c() {
        return this.f < this.e.size();
    }

    public void a(nh0 nh0, IOException iOException) {
        if (!(nh0.b().type() == Proxy.Type.DIRECT || this.a.i() == null)) {
            this.a.i().connectFailed(this.a.l().z(), nh0.b().address(), iOException);
        }
        this.b.b(nh0);
    }

    public boolean b() {
        return c() || !this.h.isEmpty();
    }

    public a d() {
        String str;
        int i;
        if (b()) {
            ArrayList arrayList = new ArrayList();
            while (c()) {
                if (c()) {
                    List<Proxy> list = this.e;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    Proxy proxy = list.get(i2);
                    this.g = new ArrayList();
                    if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                        str = this.a.l().j();
                        i = this.a.l().t();
                    } else {
                        SocketAddress address = proxy.address();
                        if (address instanceof InetSocketAddress) {
                            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                            InetAddress address2 = inetSocketAddress.getAddress();
                            if (address2 == null) {
                                str = inetSocketAddress.getHostName();
                            } else {
                                str = address2.getHostAddress();
                            }
                            i = inetSocketAddress.getPort();
                        } else {
                            StringBuilder q = ic.q("Proxy.address() is not an InetSocketAddress: ");
                            q.append(address.getClass());
                            throw new IllegalArgumentException(q.toString());
                        }
                    }
                    if (i >= 1 && i <= 65535) {
                        if (proxy.type() == Proxy.Type.SOCKS) {
                            this.g.add(InetSocketAddress.createUnresolved(str, i));
                        } else {
                            Objects.requireNonNull(this.d);
                            List<InetAddress> lookup = this.a.c().lookup(str);
                            if (!lookup.isEmpty()) {
                                Objects.requireNonNull(this.d);
                                int size = lookup.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    this.g.add(new InetSocketAddress(lookup.get(i3), i));
                                }
                            } else {
                                throw new UnknownHostException(this.a.c() + " returned no addresses for " + str);
                            }
                        }
                        int size2 = this.g.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            nh0 nh0 = new nh0(this.a, proxy, this.g.get(i4));
                            if (this.b.c(nh0)) {
                                this.h.add(nh0);
                            } else {
                                arrayList.add(nh0);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            break;
                        }
                    } else {
                        throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
                    }
                } else {
                    StringBuilder q2 = ic.q("No route to ");
                    q2.append(this.a.l().j());
                    q2.append("; exhausted proxy configurations: ");
                    q2.append(this.e);
                    throw new SocketException(q2.toString());
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.h);
                this.h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }
}
