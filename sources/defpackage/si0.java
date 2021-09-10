package defpackage;

import com.vungle.warren.model.CookieDBAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.http.HttpHost;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.ClientCookie;

/* access modifiers changed from: package-private */
/* renamed from: si0  reason: default package */
public final class si0 {
    static final ri0[] a;
    static final Map<ak0, Integer> b;

    /* renamed from: si0$a */
    static final class a {
        private final List<ri0> a = new ArrayList();
        private final zj0 b;
        private final int c;
        private int d;
        ri0[] e = new ri0[8];
        int f = 7;
        int g = 0;
        int h = 0;

        a(int i, rk0 rk0) {
            this.c = i;
            this.d = i;
            this.b = ik0.c(rk0);
        }

        private void a() {
            Arrays.fill(this.e, (Object) null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
        }

        private int b(int i) {
            return this.f + 1 + i;
        }

        private int c(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        ri0[] ri0Arr = this.e;
                        System.arraycopy(ri0Arr, i2 + 1, ri0Arr, i2 + 1 + i3, this.g);
                        this.f += i3;
                    } else {
                        ri0[] ri0Arr2 = this.e;
                        i -= ri0Arr2[length].c;
                        this.h -= ri0Arr2[length].c;
                        this.g--;
                        i3++;
                    }
                }
                ri0[] ri0Arr3 = this.e;
                System.arraycopy(ri0Arr3, i2 + 1, ri0Arr3, i2 + 1 + i3, this.g);
                this.f += i3;
            }
            return i3;
        }

        private ak0 e(int i) {
            if (i >= 0 && i <= si0.a.length + -1) {
                return si0.a[i].a;
            }
            int b2 = b(i - si0.a.length);
            if (b2 >= 0) {
                ri0[] ri0Arr = this.e;
                if (b2 < ri0Arr.length) {
                    return ri0Arr[b2].a;
                }
            }
            StringBuilder q = ic.q("Header index too large ");
            q.append(i + 1);
            throw new IOException(q.toString());
        }

        private void f(int i, ri0 ri0) {
            this.a.add(ri0);
            int i2 = ri0.c;
            if (i != -1) {
                i2 -= this.e[(this.f + 1) + i].c;
            }
            int i3 = this.d;
            if (i2 > i3) {
                a();
                return;
            }
            int c2 = c((this.h + i2) - i3);
            if (i == -1) {
                int i4 = this.g + 1;
                ri0[] ri0Arr = this.e;
                if (i4 > ri0Arr.length) {
                    ri0[] ri0Arr2 = new ri0[(ri0Arr.length * 2)];
                    System.arraycopy(ri0Arr, 0, ri0Arr2, ri0Arr.length, ri0Arr.length);
                    this.f = this.e.length - 1;
                    this.e = ri0Arr2;
                }
                int i5 = this.f;
                this.f = i5 - 1;
                this.e[i5] = ri0;
                this.g++;
            } else {
                this.e[this.f + 1 + i + c2 + i] = ri0;
            }
            this.h += i2;
        }

        public List<ri0> d() {
            ArrayList arrayList = new ArrayList(this.a);
            this.a.clear();
            return arrayList;
        }

        /* access modifiers changed from: package-private */
        public ak0 g() {
            int readByte = this.b.readByte() & 255;
            boolean z = (readByte & 128) == 128;
            int i = i(readByte, 127);
            if (z) {
                return ak0.i(cj0.d().a(this.b.Q((long) i)));
            }
            return this.b.f((long) i);
        }

        /* access modifiers changed from: package-private */
        public void h() {
            while (!this.b.t()) {
                int readByte = this.b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    int i = i(readByte, 127) - 1;
                    if (i >= 0 && i <= si0.a.length + -1) {
                        this.a.add(si0.a[i]);
                    } else {
                        int b2 = b(i - si0.a.length);
                        if (b2 >= 0) {
                            ri0[] ri0Arr = this.e;
                            if (b2 < ri0Arr.length) {
                                this.a.add(ri0Arr[b2]);
                            }
                        }
                        StringBuilder q = ic.q("Header index too large ");
                        q.append(i + 1);
                        throw new IOException(q.toString());
                    }
                } else if (readByte == 64) {
                    ak0 g2 = g();
                    si0.a(g2);
                    f(-1, new ri0(g2, g()));
                } else if ((readByte & 64) == 64) {
                    f(-1, new ri0(e(i(readByte, 63) - 1), g()));
                } else if ((readByte & 32) == 32) {
                    int i2 = i(readByte, 31);
                    this.d = i2;
                    if (i2 < 0 || i2 > this.c) {
                        StringBuilder q2 = ic.q("Invalid dynamic table size update ");
                        q2.append(this.d);
                        throw new IOException(q2.toString());
                    }
                    int i3 = this.h;
                    if (i2 < i3) {
                        if (i2 == 0) {
                            a();
                        } else {
                            c(i3 - i2);
                        }
                    }
                } else if (readByte == 16 || readByte == 0) {
                    ak0 g3 = g();
                    si0.a(g3);
                    this.a.add(new ri0(g3, g()));
                } else {
                    this.a.add(new ri0(e(i(readByte, 15) - 1), g()));
                }
            }
        }

        /* access modifiers changed from: package-private */
        public int i(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = this.b.readByte() & 255;
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: si0$b */
    public static final class b {
        private final xj0 a;
        private int b = Integer.MAX_VALUE;
        private boolean c;
        int d = 4096;
        ri0[] e = new ri0[8];
        int f = 7;
        int g = 0;
        int h = 0;

        b(xj0 xj0) {
            this.a = xj0;
        }

        private void a() {
            Arrays.fill(this.e, (Object) null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
        }

        private int b(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        ri0[] ri0Arr = this.e;
                        System.arraycopy(ri0Arr, i2 + 1, ri0Arr, i2 + 1 + i3, this.g);
                        ri0[] ri0Arr2 = this.e;
                        int i4 = this.f;
                        Arrays.fill(ri0Arr2, i4 + 1, i4 + 1 + i3, (Object) null);
                        this.f += i3;
                    } else {
                        ri0[] ri0Arr3 = this.e;
                        i -= ri0Arr3[length].c;
                        this.h -= ri0Arr3[length].c;
                        this.g--;
                        i3++;
                    }
                }
                ri0[] ri0Arr4 = this.e;
                System.arraycopy(ri0Arr4, i2 + 1, ri0Arr4, i2 + 1 + i3, this.g);
                ri0[] ri0Arr22 = this.e;
                int i42 = this.f;
                Arrays.fill(ri0Arr22, i42 + 1, i42 + 1 + i3, (Object) null);
                this.f += i3;
            }
            return i3;
        }

        private void c(ri0 ri0) {
            int i = ri0.c;
            int i2 = this.d;
            if (i > i2) {
                a();
                return;
            }
            b((this.h + i) - i2);
            int i3 = this.g + 1;
            ri0[] ri0Arr = this.e;
            if (i3 > ri0Arr.length) {
                ri0[] ri0Arr2 = new ri0[(ri0Arr.length * 2)];
                System.arraycopy(ri0Arr, 0, ri0Arr2, ri0Arr.length, ri0Arr.length);
                this.f = this.e.length - 1;
                this.e = ri0Arr2;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            this.e[i4] = ri0;
            this.g++;
            this.h += i;
        }

        /* access modifiers changed from: package-private */
        public void d(int i) {
            int min = Math.min(i, 16384);
            int i2 = this.d;
            if (i2 != min) {
                if (min < i2) {
                    this.b = Math.min(this.b, min);
                }
                this.c = true;
                this.d = min;
                int i3 = this.h;
                if (min >= i3) {
                    return;
                }
                if (min == 0) {
                    a();
                } else {
                    b(i3 - min);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void e(ak0 ak0) {
            if (cj0.d().c(ak0) < ak0.m()) {
                xj0 xj0 = new xj0();
                cj0.d().b(ak0, xj0);
                ak0 j0 = xj0.j0();
                g(j0.m(), 127, 128);
                this.a.r0(j0);
                return;
            }
            g(ak0.m(), 127, 0);
            this.a.r0(ak0);
        }

        /* access modifiers changed from: package-private */
        public void f(List<ri0> list) {
            int i;
            int i2;
            if (this.c) {
                int i3 = this.b;
                if (i3 < this.d) {
                    g(i3, 31, 32);
                }
                this.c = false;
                this.b = Integer.MAX_VALUE;
                g(this.d, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                ri0 ri0 = list.get(i4);
                ak0 o = ri0.a.o();
                ak0 ak0 = ri0.b;
                Integer num = si0.b.get(o);
                if (num != null) {
                    i2 = num.intValue() + 1;
                    if (i2 > 1 && i2 < 8) {
                        ri0[] ri0Arr = si0.a;
                        if (rh0.n(ri0Arr[i2 - 1].b, ak0)) {
                            i = i2;
                        } else if (rh0.n(ri0Arr[i2].b, ak0)) {
                            i = i2;
                            i2++;
                        }
                    }
                    i = i2;
                    i2 = -1;
                } else {
                    i2 = -1;
                    i = -1;
                }
                if (i2 == -1) {
                    int i5 = this.f + 1;
                    int length = this.e.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        if (rh0.n(this.e[i5].a, o)) {
                            if (rh0.n(this.e[i5].b, ak0)) {
                                i2 = si0.a.length + (i5 - this.f);
                                break;
                            } else if (i == -1) {
                                i = (i5 - this.f) + si0.a.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i2 != -1) {
                    g(i2, 127, 128);
                } else if (i == -1) {
                    this.a.u0(64);
                    e(o);
                    e(ak0);
                    c(ri0);
                } else {
                    ak0 ak02 = ri0.d;
                    Objects.requireNonNull(o);
                    if (!o.j(0, ak02, 0, ak02.m()) || ri0.i.equals(o)) {
                        g(i, 63, 64);
                        e(ak0);
                        c(ri0);
                    } else {
                        g(i, 15, 0);
                        e(ak0);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void g(int i, int i2, int i3) {
            if (i < i2) {
                this.a.u0(i | i3);
                return;
            }
            this.a.u0(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.a.u0(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.a.u0(i4);
        }
    }

    static {
        ri0 ri0 = new ri0(ri0.i, "");
        int i = 0;
        ak0 ak0 = ri0.f;
        ak0 ak02 = ri0.g;
        ak0 ak03 = ri0.h;
        ak0 ak04 = ri0.e;
        ri0[] ri0Arr = {ri0, new ri0(ak0, HttpGet.METHOD_NAME), new ri0(ak0, HttpPost.METHOD_NAME), new ri0(ak02, "/"), new ri0(ak02, "/index.html"), new ri0(ak03, HttpHost.DEFAULT_SCHEME_NAME), new ri0(ak03, "https"), new ri0(ak04, "200"), new ri0(ak04, "204"), new ri0(ak04, "206"), new ri0(ak04, "304"), new ri0(ak04, "400"), new ri0(ak04, "404"), new ri0(ak04, "500"), new ri0("accept-charset", ""), new ri0("accept-encoding", "gzip, deflate"), new ri0("accept-language", ""), new ri0("accept-ranges", ""), new ri0("accept", ""), new ri0("access-control-allow-origin", ""), new ri0("age", ""), new ri0("allow", ""), new ri0("authorization", ""), new ri0("cache-control", ""), new ri0("content-disposition", ""), new ri0("content-encoding", ""), new ri0("content-language", ""), new ri0("content-length", ""), new ri0("content-location", ""), new ri0("content-range", ""), new ri0("content-type", ""), new ri0(CookieDBAdapter.CookieColumns.TABLE_NAME, ""), new ri0("date", ""), new ri0("etag", ""), new ri0("expect", ""), new ri0(ClientCookie.EXPIRES_ATTR, ""), new ri0("from", ""), new ri0("host", ""), new ri0("if-match", ""), new ri0("if-modified-since", ""), new ri0("if-none-match", ""), new ri0("if-range", ""), new ri0("if-unmodified-since", ""), new ri0("last-modified", ""), new ri0("link", ""), new ri0("location", ""), new ri0("max-forwards", ""), new ri0("proxy-authenticate", ""), new ri0("proxy-authorization", ""), new ri0("range", ""), new ri0("referer", ""), new ri0("refresh", ""), new ri0("retry-after", ""), new ri0("server", ""), new ri0("set-cookie", ""), new ri0("strict-transport-security", ""), new ri0("transfer-encoding", ""), new ri0("user-agent", ""), new ri0("vary", ""), new ri0("via", ""), new ri0("www-authenticate", "")};
        a = ri0Arr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(ri0Arr.length);
        while (true) {
            ri0[] ri0Arr2 = a;
            if (i < ri0Arr2.length) {
                if (!linkedHashMap.containsKey(ri0Arr2[i].a)) {
                    linkedHashMap.put(ri0Arr2[i].a, Integer.valueOf(i));
                }
                i++;
            } else {
                b = Collections.unmodifiableMap(linkedHashMap);
                return;
            }
        }
    }

    static ak0 a(ak0 ak0) {
        int m = ak0.m();
        for (int i = 0; i < m; i++) {
            byte f = ak0.f(i);
            if (f >= 65 && f <= 90) {
                StringBuilder q = ic.q("PROTOCOL_ERROR response malformed: mixed case name: ");
                q.append(ak0.q());
                throw new IOException(q.toString());
            }
        }
        return ak0;
    }
}
