package defpackage;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* access modifiers changed from: package-private */
/* renamed from: i70  reason: default package */
public class i70 implements w70<T> {
    private final d80 a;
    final /* synthetic */ Class b;
    final /* synthetic */ Type c;

    i70(j70 j70, Class cls, Type type) {
        d80 d80;
        this.b = cls;
        this.c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            d80 = new z70(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                d80 = new a80(declaredMethod2, intValue);
            } catch (Exception unused2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    d80 = new b80(declaredMethod3);
                } catch (Exception unused3) {
                    d80 = new c80();
                }
            }
        }
        this.a = d80;
    }

    @Override // defpackage.w70
    public T a() {
        try {
            return (T) this.a.b(this.b);
        } catch (Exception e) {
            StringBuilder q = ic.q("Unable to invoke no-args constructor for ");
            q.append(this.c);
            q.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
            throw new RuntimeException(q.toString(), e);
        }
    }
}
