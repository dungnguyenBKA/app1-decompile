package defpackage;

import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: mj0  reason: default package */
public class mj0 {
    private static final mj0 a;
    private static final Logger b = Logger.getLogger(gh0.class.getName());

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0029  */
    static {
        /*
        // Method dump skipped, instructions count: 322
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mj0.<clinit>():void");
    }

    public static List<String> b(List<hh0> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            hh0 hh0 = list.get(i);
            if (hh0 != hh0.HTTP_1_0) {
                arrayList.add(hh0.toString());
            }
        }
        return arrayList;
    }

    public static mj0 h() {
        return a;
    }

    public static boolean l() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    public void a(SSLSocket sSLSocket) {
    }

    public qj0 c(X509TrustManager x509TrustManager) {
        return new oj0(d(x509TrustManager));
    }

    public sj0 d(X509TrustManager x509TrustManager) {
        return new pj0(x509TrustManager.getAcceptedIssuers());
    }

    public void e(SSLSocketFactory sSLSocketFactory) {
    }

    public void f(SSLSocket sSLSocket, @Nullable String str, List<hh0> list) {
    }

    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    public SSLContext i() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Nullable
    public String j(SSLSocket sSLSocket) {
        return null;
    }

    public Object k(String str) {
        if (b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean m(String str) {
        return true;
    }

    public void n(int i, String str, @Nullable Throwable th) {
        b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void o(String str, Object obj) {
        if (obj == null) {
            str = ic.i(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        n(5, str, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
