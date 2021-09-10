package defpackage;

import java.util.Objects;

/* renamed from: ig0  reason: default package */
public class ig0 {
    private static final jg0 a;

    static {
        jg0 jg0 = null;
        try {
            jg0 = (jg0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (jg0 == null) {
            jg0 = new jg0();
        }
        a = jg0;
    }

    public static String a(hg0 hg0) {
        Objects.requireNonNull(a);
        String obj = hg0.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }
}
