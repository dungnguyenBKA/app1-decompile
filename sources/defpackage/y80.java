package defpackage;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* renamed from: y80  reason: default package */
final class y80 extends x80 {
    private static Class d;
    private final Object b;
    private final Field c;

    y80() {
        Object obj;
        Field field = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            d = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception unused) {
            obj = null;
        }
        this.b = obj;
        try {
            field = AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused2) {
        }
        this.c = field;
    }

    @Override // defpackage.x80
    public void b(AccessibleObject accessibleObject) {
        boolean z = false;
        if (!(this.b == null || this.c == null)) {
            try {
                long longValue = ((Long) d.getMethod("objectFieldOffset", Field.class).invoke(this.b, this.c)).longValue();
                d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.b, accessibleObject, Long.valueOf(longValue), Boolean.TRUE);
                z = true;
            } catch (Exception unused) {
            }
        }
        if (!z) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new q60("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }
}
