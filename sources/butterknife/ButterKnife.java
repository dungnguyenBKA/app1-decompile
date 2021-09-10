package butterknife;

import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ButterKnife {
    static final Map<Class<?>, Constructor<? extends Unbinder>> a = new LinkedHashMap();
    public static final /* synthetic */ int b = 0;

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    public static Unbinder a(Object obj, View view) {
        Constructor<? extends Unbinder> b2 = b(obj.getClass());
        if (b2 == null) {
            int i = Unbinder.a;
            return a.b;
        }
        try {
            return (Unbinder) b2.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + b2, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + b2, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
        }
    }

    private static Constructor<? extends Unbinder> b(Class<?> cls) {
        Constructor<? extends Unbinder> constructor;
        Map<Class<?>, Constructor<? extends Unbinder>> map = a;
        Constructor<? extends Unbinder> constructor2 = map.get(cls);
        if (constructor2 != null || map.containsKey(cls)) {
            return constructor2;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            return null;
        }
        try {
            ClassLoader classLoader = cls.getClassLoader();
            constructor = classLoader.loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
        } catch (ClassNotFoundException unused) {
            constructor = b(cls.getSuperclass());
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(ic.i("Unable to find binding constructor for ", name), e);
        }
        a.put(cls, constructor);
        return constructor;
    }
}
