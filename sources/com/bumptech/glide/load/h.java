package com.bumptech.glide.load;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.Objects;

public final class h<T> {
    private static final b<Object> e = new a();
    private final T a;
    private final b<T> b;
    private final String c;
    private volatile byte[] d;

    class a implements b<Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    public interface b<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private h(String str, T t, b<T> bVar) {
        if (!TextUtils.isEmpty(str)) {
            this.c = str;
            this.a = t;
            Objects.requireNonNull(bVar, "Argument must not be null");
            this.b = bVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    public static <T> h<T> a(String str, T t, b<T> bVar) {
        return new h<>(str, t, bVar);
    }

    public static <T> h<T> c(String str) {
        return new h<>(str, null, e);
    }

    public static <T> h<T> d(String str, T t) {
        return new h<>(str, t, e);
    }

    public T b() {
        return this.a;
    }

    public void e(T t, MessageDigest messageDigest) {
        b<T> bVar = this.b;
        if (this.d == null) {
            this.d = this.c.getBytes(g.a);
        }
        bVar.a(this.d, t, messageDigest);
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.c.equals(((h) obj).c);
        }
        return false;
    }

    public int hashCode() {
        return this.c.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("Option{key='");
        q.append(this.c);
        q.append('\'');
        q.append('}');
        return q.toString();
    }
}
