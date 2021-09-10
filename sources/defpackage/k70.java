package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* access modifiers changed from: package-private */
/* renamed from: k70  reason: default package */
public class k70 implements w70<T> {
    final /* synthetic */ Constructor a;

    k70(j70 j70, Constructor constructor) {
        this.a = constructor;
    }

    @Override // defpackage.w70
    public T a() {
        try {
            return (T) this.a.newInstance(null);
        } catch (InstantiationException e) {
            StringBuilder q = ic.q("Failed to invoke ");
            q.append(this.a);
            q.append(" with no args");
            throw new RuntimeException(q.toString(), e);
        } catch (InvocationTargetException e2) {
            StringBuilder q2 = ic.q("Failed to invoke ");
            q2.append(this.a);
            q2.append(" with no args");
            throw new RuntimeException(q2.toString(), e2.getTargetException());
        } catch (IllegalAccessException e3) {
            throw new AssertionError(e3);
        }
    }
}
