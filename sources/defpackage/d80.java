package defpackage;

import java.lang.reflect.Modifier;

/* renamed from: d80  reason: default package */
public abstract class d80 {
    static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder q = ic.q("Interface can't be instantiated! Interface name: ");
            q.append(cls.getName());
            throw new UnsupportedOperationException(q.toString());
        } else if (Modifier.isAbstract(modifiers)) {
            StringBuilder q2 = ic.q("Abstract class can't be instantiated! Class name: ");
            q2.append(cls.getName());
            throw new UnsupportedOperationException(q2.toString());
        }
    }

    public abstract <T> T b(Class<T> cls);
}
