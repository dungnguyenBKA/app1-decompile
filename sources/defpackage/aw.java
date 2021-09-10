package defpackage;

import android.os.IBinder;
import defpackage.zv;
import java.lang.reflect.Field;

/* renamed from: aw  reason: default package */
public final class aw<T> extends zv.a {
    private final T b;

    private aw(T t) {
        this.b = t;
    }

    public static <T> T P(zv zvVar) {
        if (zvVar instanceof aw) {
            return ((aw) zvVar).b;
        }
        IBinder asBinder = zvVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException(ic.C(64, "Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        } else if (!field.isAccessible()) {
            field.setAccessible(true);
            try {
                return (T) field.get(asBinder);
            } catch (NullPointerException e) {
                throw new IllegalArgumentException("Binder object is null.", e);
            } catch (IllegalAccessException e2) {
                throw new IllegalArgumentException("Could not access the field in remoteBinder.", e2);
            }
        } else {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
    }

    public static <T> zv Q(T t) {
        return new aw(t);
    }
}
