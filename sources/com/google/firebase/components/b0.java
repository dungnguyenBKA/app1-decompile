package com.google.firebase.components;

import java.util.Objects;

class b0<T> implements d50<T> {
    private static final c50<Object> c = z.a();
    private static final d50<Object> d = a0.a();
    public static final /* synthetic */ int e = 0;
    private c50<T> a;
    private volatile d50<T> b;

    private b0(c50<T> c50, d50<T> d50) {
        this.a = c50;
        this.b = d50;
    }

    static <T> b0<T> a() {
        return new b0<>(c, d);
    }

    /* access modifiers changed from: package-private */
    public void b(d50<T> d50) {
        c50<T> c50;
        if (this.b == d) {
            synchronized (this) {
                c50 = this.a;
                this.a = null;
                this.b = d50;
            }
            Objects.requireNonNull((z) c50);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    @Override // defpackage.d50
    public T get() {
        return this.b.get();
    }
}
