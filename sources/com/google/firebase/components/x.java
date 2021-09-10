package com.google.firebase.components;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public class x<T> implements d50<Set<T>> {
    private volatile Set<d50<T>> a = Collections.newSetFromMap(new ConcurrentHashMap());
    private volatile Set<T> b = null;

    x(Collection<d50<T>> collection) {
        this.a.addAll(collection);
    }

    static x<?> b(Collection<d50<?>> collection) {
        return new x<>((Set) collection);
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(d50<T> d50) {
        if (this.b == null) {
            this.a.add(d50);
        } else {
            this.b.add(d50.get());
        }
    }

    @Override // defpackage.d50
    public Object get() {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                    synchronized (this) {
                        for (d50<T> d50 : this.a) {
                            this.b.add(d50.get());
                        }
                        this.a = null;
                    }
                }
            }
        }
        return Collections.unmodifiableSet(this.b);
    }
}
