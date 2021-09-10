package defpackage;

import java.util.Arrays;

/* renamed from: gg0  reason: default package */
public class gg0 {
    private gg0() {
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj == null) {
            IllegalStateException illegalStateException = new IllegalStateException(ic.i(str, " must not be null"));
            h(illegalStateException);
            throw illegalStateException;
        }
    }

    public static void c(Object obj) {
        if (obj == null) {
            NullPointerException nullPointerException = new NullPointerException();
            h(nullPointerException);
            throw nullPointerException;
        }
    }

    public static void d(Object obj, String str) {
        if (obj == null) {
            NullPointerException nullPointerException = new NullPointerException(ic.i(str, " must not be null"));
            h(nullPointerException);
            throw nullPointerException;
        }
    }

    public static void e(Object obj, String str) {
        if (obj == null) {
            NullPointerException nullPointerException = new NullPointerException(g(str));
            h(nullPointerException);
            throw nullPointerException;
        }
    }

    public static void f(Object obj, String str) {
        if (obj == null) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException(g(str));
            h(illegalArgumentException);
            throw illegalArgumentException;
        }
    }

    private static String g(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    private static <T extends Throwable> T h(T t) {
        String name = gg0.class.getName();
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (name.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    public static void i() {
        sf0 sf0 = new sf0();
        h(sf0);
        throw sf0;
    }

    public static void j(String str) {
        dg0 dg0 = new dg0(ic.j("lateinit property ", str, " has not been initialized"));
        h(dg0);
        throw dg0;
    }
}
