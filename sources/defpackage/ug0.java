package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* renamed from: ug0  reason: default package */
public final class ug0 {
    private static final rg0[] e;
    private static final rg0[] f;
    public static final ug0 g;
    public static final ug0 h = new ug0(new a(false));
    final boolean a;
    final boolean b;
    @Nullable
    final String[] c;
    @Nullable
    final String[] d;

    /* renamed from: ug0$a */
    public static final class a {
        boolean a;
        @Nullable
        String[] b;
        @Nullable
        String[] c;
        boolean d;

        a(boolean z) {
            this.a = z;
        }

        public a a(String... strArr) {
            if (!this.a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.b = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
        }

        public a b(rg0... rg0Arr) {
            if (this.a) {
                String[] strArr = new String[rg0Arr.length];
                for (int i = 0; i < rg0Arr.length; i++) {
                    strArr[i] = rg0Arr[i].a;
                }
                a(strArr);
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a c(boolean z) {
            if (this.a) {
                this.d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public a d(String... strArr) {
            if (!this.a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.c = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
        }

        public a e(oh0... oh0Arr) {
            if (this.a) {
                String[] strArr = new String[oh0Arr.length];
                for (int i = 0; i < oh0Arr.length; i++) {
                    strArr[i] = oh0Arr[i].b;
                }
                d(strArr);
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    static {
        rg0 rg0 = rg0.q;
        rg0 rg02 = rg0.r;
        rg0 rg03 = rg0.s;
        rg0 rg04 = rg0.t;
        rg0 rg05 = rg0.u;
        rg0 rg06 = rg0.k;
        rg0 rg07 = rg0.m;
        rg0 rg08 = rg0.l;
        rg0 rg09 = rg0.n;
        rg0 rg010 = rg0.p;
        rg0 rg011 = rg0.o;
        rg0[] rg0Arr = {rg0, rg02, rg03, rg04, rg05, rg06, rg07, rg08, rg09, rg010, rg011};
        e = rg0Arr;
        rg0[] rg0Arr2 = {rg0, rg02, rg03, rg04, rg05, rg06, rg07, rg08, rg09, rg010, rg011, rg0.i, rg0.j, rg0.g, rg0.h, rg0.e, rg0.f, rg0.d};
        f = rg0Arr2;
        a aVar = new a(true);
        aVar.b(rg0Arr);
        oh0 oh0 = oh0.TLS_1_3;
        oh0 oh02 = oh0.TLS_1_2;
        aVar.e(oh0, oh02);
        aVar.c(true);
        a aVar2 = new a(true);
        aVar2.b(rg0Arr2);
        oh0 oh03 = oh0.TLS_1_0;
        aVar2.e(oh0, oh02, oh0.TLS_1_1, oh03);
        aVar2.c(true);
        g = new ug0(aVar2);
        a aVar3 = new a(true);
        aVar3.b(rg0Arr2);
        aVar3.e(oh03);
        aVar3.c(true);
    }

    ug0(a aVar) {
        this.a = aVar.a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.b = aVar.d;
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.a) {
            return false;
        }
        String[] strArr = this.d;
        if (strArr != null && !rh0.v(rh0.o, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.c;
        if (strArr2 == null || rh0.v(rg0.b, strArr2, sSLSocket.getEnabledCipherSuites())) {
            return true;
        }
        return false;
    }

    public boolean b() {
        return this.b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ug0)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ug0 ug0 = (ug0) obj;
        boolean z = this.a;
        if (z != ug0.a) {
            return false;
        }
        return !z || (Arrays.equals(this.c, ug0.c) && Arrays.equals(this.d, ug0.d) && this.b == ug0.b);
    }

    public int hashCode() {
        if (this.a) {
            return ((((527 + Arrays.hashCode(this.c)) * 31) + Arrays.hashCode(this.d)) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        String str;
        List list;
        if (!this.a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.c;
        List list2 = null;
        String str2 = "[all enabled]";
        if (strArr != null) {
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str3 : strArr) {
                    arrayList.add(rg0.a(str3));
                }
                list = Collections.unmodifiableList(arrayList);
            } else {
                list = null;
            }
            str = list.toString();
        } else {
            str = str2;
        }
        String[] strArr2 = this.d;
        if (strArr2 != null) {
            if (strArr2 != null) {
                ArrayList arrayList2 = new ArrayList(strArr2.length);
                for (String str4 : strArr2) {
                    arrayList2.add(oh0.a(str4));
                }
                list2 = Collections.unmodifiableList(arrayList2);
            }
            str2 = list2.toString();
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + this.b + ")";
    }
}
