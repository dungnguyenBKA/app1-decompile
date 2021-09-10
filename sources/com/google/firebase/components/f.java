package com.google.firebase.components;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;

/* access modifiers changed from: package-private */
public final /* synthetic */ class f implements d50 {
    private final String a;

    private f(String str) {
        this.a = str;
    }

    public static d50 a(String str) {
        return new f(str);
    }

    @Override // defpackage.d50
    public Object get() {
        String str = this.a;
        try {
            Class<?> cls = Class.forName(str);
            if (i.class.isAssignableFrom(cls)) {
                return (i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new v(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e) {
            throw new v(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new v(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e3) {
            throw new v(String.format("Could not instantiate %s", str), e3);
        } catch (InvocationTargetException e4) {
            throw new v(String.format("Could not instantiate %s", str), e4);
        }
    }
}
