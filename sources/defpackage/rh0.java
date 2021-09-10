package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.ch0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.http.protocol.HTTP;

/* renamed from: rh0  reason: default package */
public final class rh0 {
    public static final byte[] a;
    public static final String[] b = new String[0];
    public static final mh0 c;
    private static final ak0 d = ak0.b("efbbbf");
    private static final ak0 e = ak0.b("feff");
    private static final ak0 f = ak0.b("fffe");
    private static final ak0 g = ak0.b("0000ffff");
    private static final ak0 h = ak0.b("ffff0000");
    public static final Charset i = Charset.forName(HTTP.UTF_8);
    private static final Charset j = Charset.forName("UTF-16BE");
    private static final Charset k = Charset.forName("UTF-16LE");
    private static final Charset l = Charset.forName("UTF-32BE");
    private static final Charset m = Charset.forName("UTF-32LE");
    public static final TimeZone n = TimeZone.getTimeZone("GMT");
    public static final Comparator<String> o = new a();
    private static final Method p;
    private static final Pattern q = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: rh0$a */
    class a implements Comparator<String> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    /* renamed from: rh0$b */
    class b implements ThreadFactory {
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;

        b(String str, boolean z) {
            this.b = str;
            this.c = z;
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.b);
            thread.setDaemon(this.c);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        Method method = null;
        c = mh0.create((fh0) null, bArr);
        kh0.create((fh0) null, bArr);
        Charset.forName("ISO-8859-1");
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        p = method;
    }

    public static ch0 A(List<ri0> list) {
        ch0.a aVar = new ch0.a();
        for (ri0 ri0 : list) {
            ph0.a.b(aVar, ri0.a.q(), ri0.b.q());
        }
        return aVar.b();
    }

    public static String B(String str, int i2, int i3) {
        int x = x(str, i2, i3);
        return str.substring(x, y(str, x, i3));
    }

    public static boolean C(String str) {
        return q.matcher(str).matches();
    }

    public static void a(Throwable th, Throwable th2) {
        Method method = p;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static AssertionError b(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static Charset c(zj0 zj0, Charset charset) {
        ak0 ak0 = d;
        if (zj0.E(0, ak0)) {
            zj0.skip((long) ak0.m());
            return i;
        }
        ak0 ak02 = e;
        if (zj0.E(0, ak02)) {
            zj0.skip((long) ak02.m());
            return j;
        }
        ak0 ak03 = f;
        if (zj0.E(0, ak03)) {
            zj0.skip((long) ak03.m());
            return k;
        }
        ak0 ak04 = g;
        if (zj0.E(0, ak04)) {
            zj0.skip((long) ak04.m());
            return l;
        }
        ak0 ak05 = h;
        if (!zj0.E(0, ak05)) {
            return charset;
        }
        zj0.skip((long) ak05.m());
        return m;
    }

    public static String d(String str) {
        InetAddress inetAddress;
        int i2 = -1;
        boolean z = true;
        int i3 = 0;
        if (str.contains(":")) {
            if (!str.startsWith("[") || !str.endsWith("]")) {
                inetAddress = j(str, 0, str.length());
            } else {
                inetAddress = j(str, 1, str.length() - 1);
            }
            if (inetAddress == null) {
                return null;
            }
            byte[] address = inetAddress.getAddress();
            if (address.length == 16) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < address.length) {
                    int i6 = i4;
                    while (i6 < 16 && address[i6] == 0 && address[i6 + 1] == 0) {
                        i6 += 2;
                    }
                    int i7 = i6 - i4;
                    if (i7 > i5 && i7 >= 4) {
                        i2 = i4;
                        i5 = i7;
                    }
                    i4 = i6 + 2;
                }
                xj0 xj0 = new xj0();
                while (i3 < address.length) {
                    if (i3 == i2) {
                        xj0.u0(58);
                        i3 += i5;
                        if (i3 == 16) {
                            xj0.u0(58);
                        }
                    } else {
                        if (i3 > 0) {
                            xj0.u0(58);
                        }
                        xj0.J((long) (((address[i3] & 255) << 8) | (address[i3 + 1] & 255)));
                        i3 += 2;
                    }
                }
                return xj0.l0();
            }
            throw new AssertionError(ic.j("Invalid IPv6 address: '", str, "'"));
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            int i8 = 0;
            while (true) {
                if (i8 >= lowerCase.length()) {
                    z = false;
                    break;
                }
                char charAt = lowerCase.charAt(i8);
                if (charAt <= 31) {
                    break;
                } else if (charAt >= 127) {
                    break;
                } else if (" #%/:?@[\\]".indexOf(charAt) != -1) {
                    break;
                } else {
                    i8++;
                }
            }
            if (z) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static int e(String str, long j2, TimeUnit timeUnit) {
        if (j2 >= 0) {
            Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j2);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(ic.i(str, " too large."));
            } else if (millis != 0 || j2 <= 0) {
                return (int) millis;
            } else {
                throw new IllegalArgumentException(ic.i(str, " too small."));
            }
        } else {
            throw new IllegalArgumentException(ic.i(str, " < 0"));
        }
    }

    public static void f(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void h(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!u(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
        }
    }

    public static int i(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00d7, code lost:
        if (r7 == 16) goto L_0x00eb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00da, code lost:
        if (r8 != -1) goto L_0x00dd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00dc, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00dd, code lost:
        r1 = r7 - r8;
        java.lang.System.arraycopy(r3, r8, r3, 16 - r1, r1);
        java.util.Arrays.fill(r3, r8, (16 - r7) + r8, (byte) 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00ef, code lost:
        return java.net.InetAddress.getByAddress(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00f6, code lost:
        throw new java.lang.AssertionError();
     */
    @javax.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.net.InetAddress j(java.lang.String r16, int r17, int r18) {
        /*
        // Method dump skipped, instructions count: 248
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rh0.j(java.lang.String, int, int):java.net.InetAddress");
    }

    public static int k(String str, int i2, int i3, char c2) {
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int l(String str, int i2, int i3, String str2) {
        while (i2 < i3) {
            if (str2.indexOf(str.charAt(i2)) != -1) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static boolean m(rk0 rk0, int i2, TimeUnit timeUnit) {
        try {
            return w(rk0, i2, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean n(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String o(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String p(dh0 dh0, boolean z) {
        String str;
        if (dh0.j().contains(":")) {
            StringBuilder q2 = ic.q("[");
            q2.append(dh0.j());
            q2.append("]");
            str = q2.toString();
        } else {
            str = dh0.j();
        }
        if (!z && dh0.t() == dh0.c(dh0.y())) {
            return str;
        }
        StringBuilder r = ic.r(str, ":");
        r.append(dh0.t());
        return r.toString();
    }

    public static <T> List<T> q(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> r(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static int s(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static String[] t(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i2]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i2++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean u(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean v(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (!(strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0)) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean w(rk0 rk0, int i2, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        long c2 = rk0.timeout().e() ? rk0.timeout().c() - nanoTime : Long.MAX_VALUE;
        rk0.timeout().d(Math.min(c2, timeUnit.toNanos((long) i2)) + nanoTime);
        try {
            xj0 xj0 = new xj0();
            while (rk0.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                xj0.j();
            }
            if (c2 == Long.MAX_VALUE) {
                rk0.timeout().a();
            } else {
                rk0.timeout().d(nanoTime + c2);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (c2 == Long.MAX_VALUE) {
                rk0.timeout().a();
            } else {
                rk0.timeout().d(nanoTime + c2);
            }
            return false;
        } catch (Throwable th) {
            if (c2 == Long.MAX_VALUE) {
                rk0.timeout().a();
            } else {
                rk0.timeout().d(nanoTime + c2);
            }
            throw th;
        }
    }

    public static int x(String str, int i2, int i3) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int y(String str, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            char charAt = str.charAt(i4);
            if (!(charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ')) {
                return i4 + 1;
            }
        }
        return i2;
    }

    public static ThreadFactory z(String str, boolean z) {
        return new b(str, z);
    }
}
