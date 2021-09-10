package defpackage;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import org.apache.http.HttpHost;

/* renamed from: dh0  reason: default package */
public final class dh0 {
    private static final char[] j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final String a;
    private final String b;
    private final String c;
    final String d;
    final int e;
    private final List<String> f;
    @Nullable
    private final List<String> g;
    @Nullable
    private final String h;
    private final String i;

    /* renamed from: dh0$a */
    public static final class a {
        @Nullable
        String a;
        String b = "";
        String c = "";
        @Nullable
        String d;
        int e = -1;
        final List<String> f;
        @Nullable
        List<String> g;
        @Nullable
        String h;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public a a(String str, @Nullable String str2) {
            Objects.requireNonNull(str, "name == null");
            if (this.g == null) {
                this.g = new ArrayList();
            }
            this.g.add(dh0.b(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
            this.g.add(str2 != null ? dh0.b(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
            return this;
        }

        public dh0 b() {
            if (this.a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.d != null) {
                return new dh0(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public a c(@Nullable String str) {
            this.g = str != null ? dh0.v(dh0.b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:105:0x0212, code lost:
            if (r1 <= 65535) goto L_0x021a;
         */
        /* JADX WARNING: Removed duplicated region for block: B:100:0x01e8  */
        /* JADX WARNING: Removed duplicated region for block: B:112:0x023a  */
        /* JADX WARNING: Removed duplicated region for block: B:115:0x0255  */
        /* JADX WARNING: Removed duplicated region for block: B:128:0x02a3  */
        /* JADX WARNING: Removed duplicated region for block: B:164:0x035d  */
        /* JADX WARNING: Removed duplicated region for block: B:175:0x03a3  */
        /* JADX WARNING: Removed duplicated region for block: B:198:0x01e1 A[SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x0066  */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x00ac  */
        /* JADX WARNING: Removed duplicated region for block: B:61:0x011e  */
        /* JADX WARNING: Removed duplicated region for block: B:62:0x0123  */
        /* JADX WARNING: Removed duplicated region for block: B:85:0x01c3  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public defpackage.dh0.a d(@javax.annotation.Nullable defpackage.dh0 r22, java.lang.String r23) {
            /*
            // Method dump skipped, instructions count: 967
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.dh0.a.d(dh0, java.lang.String):dh0$a");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.b.isEmpty() || !this.c.isEmpty()) {
                sb.append(this.b);
                if (!this.c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            String str2 = this.d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int i = this.e;
            if (!(i == -1 && this.a == null)) {
                if (i == -1) {
                    i = dh0.c(this.a);
                }
                String str3 = this.a;
                if (str3 == null || i != dh0.c(str3)) {
                    sb.append(':');
                    sb.append(i);
                }
            }
            List<String> list = this.f;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append(list.get(i2));
            }
            if (this.g != null) {
                sb.append('?');
                dh0.l(sb, this.g);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    dh0(a aVar) {
        this.a = aVar.a;
        this.b = q(aVar.b, false);
        this.c = q(aVar.c, false);
        this.d = aVar.d;
        int i2 = aVar.e;
        this.e = i2 == -1 ? c(aVar.a) : i2;
        this.f = r(aVar.f, false);
        List<String> list = aVar.g;
        String str = null;
        this.g = list != null ? r(list, true) : null;
        String str2 = aVar.h;
        this.h = str2 != null ? p(str2, 0, str2.length(), false) : str;
        this.i = aVar.toString();
    }

    static String a(String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i4 = i2;
        while (i4 < i3) {
            int codePointAt = str.codePointAt(i4);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !s(str, i4, i3)))) || (codePointAt == 43 && z3)))) {
                xj0 xj0 = new xj0();
                xj0.A0(str, i2, i4);
                xj0 xj02 = null;
                while (i4 < i3) {
                    int codePointAt2 = str.codePointAt(i4);
                    if (!z || !(codePointAt2 == 9 || codePointAt2 == 10 || codePointAt2 == 12 || codePointAt2 == 13)) {
                        if (codePointAt2 == 43 && z3) {
                            xj0.z0(z ? "+" : "%2B");
                        } else if (codePointAt2 < 32 || codePointAt2 == 127 || ((codePointAt2 >= 128 && z4) || str2.indexOf(codePointAt2) != -1 || (codePointAt2 == 37 && (!z || (z2 && !s(str, i4, i3)))))) {
                            if (xj02 == null) {
                                xj02 = new xj0();
                            }
                            xj02.B0(codePointAt2);
                            while (!xj02.t()) {
                                int readByte = xj02.readByte() & 255;
                                xj0.u0(37);
                                char[] cArr = j;
                                xj0.u0(cArr[(readByte >> 4) & 15]);
                                xj0.u0(cArr[readByte & 15]);
                            }
                        } else {
                            xj0.B0(codePointAt2);
                        }
                    }
                    i4 += Character.charCount(codePointAt2);
                }
                return xj0.l0();
            }
            i4 += Character.charCount(codePointAt);
        }
        return str.substring(i2, i3);
    }

    static String b(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    public static int c(String str) {
        if (str.equals(HttpHost.DEFAULT_SCHEME_NAME)) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static dh0 i(String str) {
        a aVar = new a();
        aVar.d(null, str);
        return aVar.b();
    }

    static void l(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            String str = list.get(i2);
            String str2 = list.get(i2 + 1);
            if (i2 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    @Nullable
    public static dh0 n(String str) {
        try {
            return i(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static String p(String str, int i2, int i3, boolean z) {
        int i4;
        int i5 = i2;
        while (i5 < i3) {
            char charAt = str.charAt(i5);
            if (charAt == '%' || (charAt == '+' && z)) {
                xj0 xj0 = new xj0();
                xj0.A0(str, i2, i5);
                while (i5 < i3) {
                    int codePointAt = str.codePointAt(i5);
                    if (codePointAt == 37 && (i4 = i5 + 2) < i3) {
                        int i6 = rh0.i(str.charAt(i5 + 1));
                        int i7 = rh0.i(str.charAt(i4));
                        if (!(i6 == -1 || i7 == -1)) {
                            xj0.u0((i6 << 4) + i7);
                            i5 = i4;
                            i5 += Character.charCount(codePointAt);
                        }
                    } else if (codePointAt == 43 && z) {
                        xj0.u0(32);
                        i5 += Character.charCount(codePointAt);
                    }
                    xj0.B0(codePointAt);
                    i5 += Character.charCount(codePointAt);
                }
                return xj0.l0();
            }
            i5++;
        }
        return str.substring(i2, i3);
    }

    static String q(String str, boolean z) {
        return p(str, 0, str.length(), z);
    }

    private List<String> r(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? p(str, 0, str.length(), z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static boolean s(String str, int i2, int i3) {
        int i4 = i2 + 2;
        if (i4 >= i3 || str.charAt(i2) != '%' || rh0.i(str.charAt(i2 + 1)) == -1 || rh0.i(str.charAt(i4)) == -1) {
            return false;
        }
        return true;
    }

    static List<String> v(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 <= str.length()) {
            int indexOf = str.indexOf(38, i2);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i2);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i2, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i2, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i2 = indexOf + 1;
        }
        return arrayList;
    }

    public String d() {
        if (this.c.isEmpty()) {
            return "";
        }
        int indexOf = this.i.indexOf(64);
        return this.i.substring(this.i.indexOf(58, this.a.length() + 3) + 1, indexOf);
    }

    public String e() {
        int indexOf = this.i.indexOf(47, this.a.length() + 3);
        String str = this.i;
        return this.i.substring(indexOf, rh0.l(str, indexOf, str.length(), "?#"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof dh0) && ((dh0) obj).i.equals(this.i);
    }

    public List<String> f() {
        int indexOf = this.i.indexOf(47, this.a.length() + 3);
        String str = this.i;
        int l = rh0.l(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < l) {
            int i2 = indexOf + 1;
            int k = rh0.k(this.i, i2, l, '/');
            arrayList.add(this.i.substring(i2, k));
            indexOf = k;
        }
        return arrayList;
    }

    @Nullable
    public String g() {
        if (this.g == null) {
            return null;
        }
        int indexOf = this.i.indexOf(63) + 1;
        String str = this.i;
        return this.i.substring(indexOf, rh0.k(str, indexOf, str.length(), '#'));
    }

    public String h() {
        if (this.b.isEmpty()) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.i;
        return this.i.substring(length, rh0.l(str, length, str.length(), ":@"));
    }

    public int hashCode() {
        return this.i.hashCode();
    }

    public String j() {
        return this.d;
    }

    public boolean k() {
        return this.a.equals("https");
    }

    public a m() {
        String str;
        a aVar = new a();
        aVar.a = this.a;
        aVar.b = h();
        aVar.c = d();
        aVar.d = this.d;
        aVar.e = this.e != c(this.a) ? this.e : -1;
        aVar.f.clear();
        aVar.f.addAll(f());
        aVar.c(g());
        if (this.h == null) {
            str = null;
        } else {
            str = this.i.substring(this.i.indexOf(35) + 1);
        }
        aVar.h = str;
        return aVar;
    }

    public List<String> o() {
        return this.f;
    }

    public int t() {
        return this.e;
    }

    public String toString() {
        return this.i;
    }

    @Nullable
    public String u() {
        if (this.g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        l(sb, this.g);
        return sb.toString();
    }

    public String w() {
        a aVar;
        try {
            aVar = new a();
            aVar.d(this, "/...");
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        Objects.requireNonNull(aVar);
        aVar.b = b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        aVar.c = b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return aVar.b().i;
    }

    @Nullable
    public dh0 x(String str) {
        a aVar;
        try {
            aVar = new a();
            aVar.d(this, str);
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public String y() {
        return this.a;
    }

    public URI z() {
        a m = m();
        int size = m.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            m.f.set(i2, b(m.f.get(i2), "[]", true, true, false, true));
        }
        List<String> list = m.g;
        if (list != null) {
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str = m.g.get(i3);
                if (str != null) {
                    m.g.set(i3, b(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = m.h;
        if (str2 != null) {
            m.h = b(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String aVar = m.toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }
}
