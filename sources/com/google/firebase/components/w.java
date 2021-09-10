package com.google.firebase.components;

public class w<T> implements d50<T> {
    private static final Object c = new Object();
    private volatile Object a = c;
    private volatile d50<T> b;

    public w(d50<T> d50) {
        this.b = d50;
    }

    @Override // defpackage.d50
    public T get() {
        T t = (T) this.a;
        Object obj = c;
        if (t == obj) {
            synchronized (this) {
                t = this.a;
                if (t == obj) {
                    t = this.b.get();
                    this.a = t;
                    this.b = null;
                }
            }
        }
        return t;
    }
}
