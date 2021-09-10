package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* renamed from: jj0  reason: default package */
final class jj0 extends mj0 {
    final Method c;
    final Method d;

    jj0(Method method, Method method2) {
        this.c = method;
        this.d = method2;
    }

    @Override // defpackage.mj0
    public void f(SSLSocket sSLSocket, String str, List<hh0> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> b = mj0.b(list);
            ArrayList arrayList = (ArrayList) b;
            this.c.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw rh0.b("unable to set ssl parameters", e);
        }
    }

    @Override // defpackage.mj0
    @Nullable
    public String j(SSLSocket sSLSocket) {
        try {
            String str = (String) this.d.invoke(sSLSocket, new Object[0]);
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        } catch (InvocationTargetException e) {
            if (e.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw rh0.b("failed to get ALPN selected protocol", e);
        } catch (IllegalAccessException e2) {
            throw rh0.b("failed to get ALPN selected protocol", e2);
        }
    }
}
