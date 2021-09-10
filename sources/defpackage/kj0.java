package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* renamed from: kj0  reason: default package */
class kj0 extends mj0 {
    private final Method c;
    private final Method d;
    private final Method e;
    private final Class<?> f;
    private final Class<?> g;

    /* renamed from: kj0$a */
    private static class a implements InvocationHandler {
        private final List<String> a;
        boolean b;
        String c;

        a(List<String> list) {
            this.a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = rh0.b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.a.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.c = str;
                            return str;
                        }
                    }
                    String str2 = this.a.get(0);
                    this.c = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                } else {
                    this.c = (String) objArr[0];
                    return null;
                }
            }
        }
    }

    kj0(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.c = method;
        this.d = method2;
        this.e = method3;
        this.f = cls;
        this.g = cls2;
    }

    @Override // defpackage.mj0
    public void a(SSLSocket sSLSocket) {
        try {
            this.e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw rh0.b("unable to remove alpn", e2);
        }
    }

    @Override // defpackage.mj0
    public void f(SSLSocket sSLSocket, String str, List<hh0> list) {
        List<String> b = mj0.b(list);
        try {
            Object newProxyInstance = Proxy.newProxyInstance(mj0.class.getClassLoader(), new Class[]{this.f, this.g}, new a(b));
            this.c.invoke(null, sSLSocket, newProxyInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw rh0.b("unable to set alpn", e2);
        }
    }

    @Override // defpackage.mj0
    @Nullable
    public String j(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.d.invoke(null, sSLSocket));
            boolean z = aVar.b;
            if (!z && aVar.c == null) {
                mj0.h().n(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            } else if (z) {
                return null;
            } else {
                return aVar.c;
            }
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw rh0.b("unable to get selected protocol", e2);
        }
    }
}
