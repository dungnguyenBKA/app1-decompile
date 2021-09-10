package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.lang.reflect.Proxy;

/* renamed from: com.facebook.ads.redexgen.X.4s  reason: invalid class name and case insensitive filesystem */
public final class C02434s {
    @SuppressLint({"CatchGeneralException"})
    public static <T> T A00(T t, Class<T> cls) {
        ClassLoader classLoader = t.getClass().getClassLoader();
        return cls.cast(Proxy.newProxyInstance(classLoader, new Class[]{cls}, new C02424r(t, classLoader)));
    }
}
