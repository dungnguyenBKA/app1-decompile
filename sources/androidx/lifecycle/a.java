package androidx.lifecycle;

import androidx.lifecycle.f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

class a {
    static a c = new a();
    private final Map<Class<?>, C0014a> a = new HashMap();
    private final Map<Class<?>, Boolean> b = new HashMap();

    /* access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.a$a  reason: collision with other inner class name */
    public static class C0014a {
        final Map<f.a, List<b>> a = new HashMap();
        final Map<b, f.a> b;

        C0014a(Map<b, f.a> map) {
            this.b = map;
            for (Map.Entry<b, f.a> entry : map.entrySet()) {
                f.a value = entry.getValue();
                List<b> list = this.a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        private static void b(List<b> list, i iVar, f.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    b bVar = list.get(size);
                    Objects.requireNonNull(bVar);
                    try {
                        int i = bVar.a;
                        if (i == 0) {
                            bVar.b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            bVar.b.invoke(obj, iVar);
                        } else if (i == 2) {
                            bVar.b.invoke(obj, iVar, aVar);
                        }
                    } catch (InvocationTargetException e) {
                        throw new RuntimeException("Failed to call observer method", e.getCause());
                    } catch (IllegalAccessException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(i iVar, f.a aVar, Object obj) {
            b(this.a.get(aVar), iVar, aVar, obj);
            b(this.a.get(f.a.ON_ANY), iVar, aVar, obj);
        }
    }

    /* access modifiers changed from: package-private */
    public static class b {
        final int a;
        final Method b;

        b(int i, Method method) {
            this.a = i;
            this.b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a != bVar.a || !this.b.getName().equals(bVar.b.getName())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.b.getName().hashCode() + (this.a * 31);
        }
    }

    a() {
    }

    private C0014a a(Class<?> cls, Method[] methodArr) {
        int i;
        C0014a b2;
        Class<?> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (b2 = b(superclass)) == null)) {
            hashMap.putAll(b2.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, f.a> entry : b(cls2).b.entrySet()) {
                d(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            p pVar = (p) method.getAnnotation(p.class);
            if (pVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(i.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                f.a value = pVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(f.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == f.a.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    d(hashMap, new b(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C0014a aVar = new C0014a(hashMap);
        this.a.put(cls, aVar);
        this.b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    private void d(Map<b, f.a> map, b bVar, f.a aVar, Class<?> cls) {
        f.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            Method method = bVar.b;
            StringBuilder q = ic.q("Method ");
            q.append(method.getName());
            q.append(" in ");
            q.append(cls.getName());
            q.append(" already declared with different @OnLifecycleEvent value: previous value ");
            q.append(aVar2);
            q.append(", new value ");
            q.append(aVar);
            throw new IllegalArgumentException(q.toString());
        } else if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    /* access modifiers changed from: package-private */
    public C0014a b(Class<?> cls) {
        C0014a aVar = this.a.get(cls);
        if (aVar != null) {
            return aVar;
        }
        return a(cls, null);
    }

    /* access modifiers changed from: package-private */
    public boolean c(Class<?> cls) {
        Boolean bool = this.b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Method[] declaredMethods = cls.getDeclaredMethods();
            for (Method method : declaredMethods) {
                if (((p) method.getAnnotation(p.class)) != null) {
                    a(cls, declaredMethods);
                    return true;
                }
            }
            this.b.put(cls, Boolean.FALSE);
            return false;
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }
}
