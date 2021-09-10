package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;

public class e {
    private static final e0<String, Class<?>> a = new e0<>();

    static boolean b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static Class<?> c(ClassLoader classLoader, String str) {
        e0<String, Class<?>> e0Var = a;
        Class<?> orDefault = e0Var.getOrDefault(str, null);
        if (orDefault != null) {
            return orDefault;
        }
        Class<?> cls = Class.forName(str, false, classLoader);
        e0Var.put(str, cls);
        return cls;
    }

    /* JADX DEBUG: Type inference failed for r3v3. Raw type applied. Possible types: java.lang.Class<?>, java.lang.Class<? extends androidx.fragment.app.Fragment> */
    public static Class<? extends Fragment> d(ClassLoader classLoader, String str) {
        try {
            return c(classLoader, str);
        } catch (ClassNotFoundException e) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": make sure class name exists"), e);
        } catch (ClassCastException e2) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e2);
        }
    }

    public Fragment a(ClassLoader classLoader, String str) {
        try {
            return (Fragment) d(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (InstantiationException e) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (IllegalAccessException e2) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.c(ic.j("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
