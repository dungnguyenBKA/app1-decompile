package defpackage;

import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: hj0  reason: default package */
class hj0 extends mj0 {
    private final lj0<Socket> c;
    private final lj0<Socket> d;
    private final lj0<Socket> e;
    private final lj0<Socket> f;
    private final c g;

    /* renamed from: hj0$a */
    static final class a extends qj0 {
        private final Object a;
        private final Method b;

        a(Object obj, Method method) {
            this.a = obj;
            this.b = method;
        }

        @Override // defpackage.qj0
        public List<Certificate> a(List<Certificate> list, String str) {
            try {
                return (List) this.b.invoke(this.a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (InvocationTargetException e) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e.getMessage());
                sSLPeerUnverifiedException.initCause(e);
                throw sSLPeerUnverifiedException;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: hj0$b */
    public static final class b implements sj0 {
        private final X509TrustManager a;
        private final Method b;

        b(X509TrustManager x509TrustManager, Method method) {
            this.b = method;
            this.a = x509TrustManager;
        }

        @Override // defpackage.sj0
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.b.invoke(this.a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e) {
                throw rh0.b("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!this.a.equals(bVar.a) || !this.b.equals(bVar.b)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (this.b.hashCode() * 31) + this.a.hashCode();
        }
    }

    /* renamed from: hj0$c */
    static final class c {
        private final Method a;
        private final Method b;
        private final Method c;

        c(Method method, Method method2, Method method3) {
            this.a = method;
            this.b = method2;
            this.c = method3;
        }

        /* access modifiers changed from: package-private */
        public Object a(String str) {
            Method method = this.a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.b.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public boolean b(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    hj0(Class<?> cls, lj0<Socket> lj0, lj0<Socket> lj02, lj0<Socket> lj03, lj0<Socket> lj04) {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", new Class[0]);
            method = cls2.getMethod("open", String.class);
            method2 = cls2.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception unused) {
            method2 = null;
            method = null;
        }
        this.g = new c(method3, method, method2);
        this.c = lj0;
        this.d = lj02;
        this.e = lj03;
        this.f = lj04;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        return ((java.lang.Boolean) r7.getMethod("isCleartextTrafficPermitted", new java.lang.Class[0]).invoke(r8, new java.lang.Object[0])).booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:?, code lost:
        return true;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:4:0x001d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean p(java.lang.String r6, java.lang.Class<?> r7, java.lang.Object r8) {
        /*
            r5 = this;
            java.lang.String r0 = "isCleartextTrafficPermitted"
            r1 = 0
            r2 = 1
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch:{ NoSuchMethodException -> 0x001d }
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            r3[r1] = r4     // Catch:{ NoSuchMethodException -> 0x001d }
            java.lang.reflect.Method r3 = r7.getMethod(r0, r3)     // Catch:{ NoSuchMethodException -> 0x001d }
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch:{ NoSuchMethodException -> 0x001d }
            r4[r1] = r6     // Catch:{ NoSuchMethodException -> 0x001d }
            java.lang.Object r6 = r3.invoke(r8, r4)     // Catch:{ NoSuchMethodException -> 0x001d }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ NoSuchMethodException -> 0x001d }
            boolean r6 = r6.booleanValue()     // Catch:{ NoSuchMethodException -> 0x001d }
            return r6
        L_0x001d:
            java.lang.Class[] r6 = new java.lang.Class[r1]     // Catch:{ NoSuchMethodException -> 0x002f }
            java.lang.reflect.Method r6 = r7.getMethod(r0, r6)     // Catch:{ NoSuchMethodException -> 0x002f }
            java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch:{ NoSuchMethodException -> 0x002f }
            java.lang.Object r6 = r6.invoke(r8, r7)     // Catch:{ NoSuchMethodException -> 0x002f }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ NoSuchMethodException -> 0x002f }
            boolean r2 = r6.booleanValue()     // Catch:{ NoSuchMethodException -> 0x002f }
        L_0x002f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hj0.p(java.lang.String, java.lang.Class, java.lang.Object):boolean");
    }

    @Override // defpackage.mj0
    public qj0 c(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return new oj0(d(x509TrustManager));
        }
    }

    @Override // defpackage.mj0
    public sj0 d(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return new pj0(x509TrustManager.getAcceptedIssuers());
        }
    }

    @Override // defpackage.mj0
    public void f(SSLSocket sSLSocket, String str, List<hh0> list) {
        if (str != null) {
            this.c.c(sSLSocket, Boolean.TRUE);
            this.d.c(sSLSocket, str);
        }
        lj0<Socket> lj0 = this.f;
        if (lj0 != null && lj0.e(sSLSocket)) {
            Object[] objArr = new Object[1];
            xj0 xj0 = new xj0();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                hh0 hh0 = list.get(i);
                if (hh0 != hh0.HTTP_1_0) {
                    xj0.u0(hh0.toString().length());
                    xj0.z0(hh0.toString());
                }
            }
            objArr[0] = xj0.q();
            this.f.d(sSLSocket, objArr);
        }
    }

    @Override // defpackage.mj0
    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e2) {
            if (rh0.u(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        } catch (SecurityException e3) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        } catch (ClassCastException e4) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException2 = new IOException("Exception in connect");
                iOException2.initCause(e4);
                throw iOException2;
            }
            throw e4;
        }
    }

    @Override // defpackage.mj0
    public SSLContext i() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT >= 22) {
                z = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance(SSLSocketFactory.TLS);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    @Override // defpackage.mj0
    @Nullable
    public String j(SSLSocket sSLSocket) {
        byte[] bArr;
        lj0<Socket> lj0 = this.e;
        if (lj0 == null || !lj0.e(sSLSocket) || (bArr = (byte[]) this.e.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, rh0.i);
    }

    @Override // defpackage.mj0
    public Object k(String str) {
        return this.g.a(str);
    }

    @Override // defpackage.mj0
    public boolean m(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return p(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return true;
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            throw rh0.b("unable to determine cleartext support", e2);
        }
    }

    @Override // defpackage.mj0
    public void n(int i, String str, @Nullable Throwable th) {
        int min;
        int i2 = 5;
        if (i != 5) {
            i2 = 3;
        }
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int indexOf = str.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, min));
                if (min >= indexOf) {
                    break;
                }
                i3 = min;
            }
            i3 = min + 1;
        }
    }

    @Override // defpackage.mj0
    public void o(String str, Object obj) {
        if (!this.g.b(obj)) {
            n(5, str, null);
        }
    }
}
