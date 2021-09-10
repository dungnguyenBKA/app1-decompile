package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class KT {
    public static final Set<Object> A00 = Collections.newSetFromMap(new WeakHashMap());
    public static final AtomicBoolean A01 = new AtomicBoolean(true);
    public static final AtomicReference<KR> A02 = new AtomicReference<>();

    @SuppressLint({"RethrownThrowableArgument"})
    public static void A00(Throwable th, Object obj) throws Throwable {
        if (A01.get()) {
            A00.add(obj);
            C0610Ki.A00().A8L(3306, th);
            KR kr = A02.get();
            if (kr != null) {
                kr.ADD(th, obj);
                return;
            }
            return;
        }
        throw th;
    }

    public static void A01(boolean z, KR kr) {
        A01.set(z);
        A02.set(kr);
    }

    public static boolean A02(Object obj) {
        return A00.contains(obj);
    }
}
