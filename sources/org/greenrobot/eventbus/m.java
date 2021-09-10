package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public class m {
    private static final Map<Class<?>, List<l>> a = new ConcurrentHashMap();
    private static final a[] b = new a[4];

    /* access modifiers changed from: package-private */
    public static class a {
        final List<l> a = new ArrayList();
        final Map<Class, Object> b = new HashMap();
        final Map<String, Class> c = new HashMap();
        final StringBuilder d = new StringBuilder(128);
        Class<?> e;
        boolean f;
        uk0 g;

        a() {
        }

        private boolean b(Method method, Class<?> cls) {
            this.d.setLength(0);
            this.d.append(method.getName());
            StringBuilder sb = this.d;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.c.put(sb2, put);
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean a(Method method, Class<?> cls) {
            Object put = this.b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (b((Method) put, cls)) {
                    this.b.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return b(method, cls);
        }

        /* access modifiers changed from: package-private */
        public void c() {
            if (this.f) {
                this.e = null;
                return;
            }
            Class<? super Object> superclass = this.e.getSuperclass();
            this.e = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                this.e = null;
            }
        }
    }

    m(List<Object> list, boolean z, boolean z2) {
    }

    private void b(a aVar) {
        Method[] methodArr;
        j jVar;
        try {
            methodArr = aVar.e.getDeclaredMethods();
        } catch (Throwable unused) {
            methodArr = aVar.e.getMethods();
            aVar.f = true;
        }
        for (Method method : methodArr) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && (jVar = (j) method.getAnnotation(j.class)) != null) {
                    Class<?> cls = parameterTypes[0];
                    if (aVar.a(method, cls)) {
                        aVar.a.add(new l(method, cls, jVar.threadMode(), jVar.priority(), jVar.sticky()));
                    }
                }
            }
        }
    }

    private List<l> c(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.a);
        aVar.a.clear();
        aVar.b.clear();
        aVar.c.clear();
        int i = 0;
        aVar.d.setLength(0);
        aVar.e = null;
        aVar.f = false;
        aVar.g = null;
        synchronized (b) {
            while (true) {
                if (i >= 4) {
                    break;
                }
                a[] aVarArr = b;
                if (aVarArr[i] == null) {
                    aVarArr[i] = aVar;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private a d() {
        synchronized (b) {
            for (int i = 0; i < 4; i++) {
                a[] aVarArr = b;
                a aVar = aVarArr[i];
                if (aVar != null) {
                    aVarArr[i] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r0.e == r3.c()) goto L_0x0035;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<org.greenrobot.eventbus.l> a(java.lang.Class<?> r10) {
        /*
        // Method dump skipped, instructions count: 138
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.eventbus.m.a(java.lang.Class):java.util.List");
    }
}
