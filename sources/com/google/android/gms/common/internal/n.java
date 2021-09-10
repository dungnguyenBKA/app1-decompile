package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

public final class n {
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void c(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder p = ic.p(ic.m(name, ic.m(name2, 36)), "Must be called on ", name2, " thread, but got ", name);
            p.append(".");
            throw new IllegalStateException(p.toString());
        }
    }

    public static void d(String str) {
        if (!(Looper.getMainLooper() == Looper.myLooper())) {
            throw new IllegalStateException(str);
        }
    }

    public static String e(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    public static String f(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void g(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T h(T t) {
        Objects.requireNonNull(t, "null reference");
        return t;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T i(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void j(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void k(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
