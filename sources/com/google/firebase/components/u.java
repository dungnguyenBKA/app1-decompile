package com.google.firebase.components;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public class u implements u40, t40 {
    private final Map<Class<?>, ConcurrentHashMap<s40<Object>, Executor>> a = new HashMap();
    private Queue<r40<?>> b = new ArrayDeque();
    private final Executor c;

    u(Executor executor) {
        this.c = executor;
    }

    @Override // defpackage.u40
    public synchronized <T> void a(Class<T> cls, Executor executor, s40<? super T> s40) {
        if (!this.a.containsKey(cls)) {
            this.a.put(cls, new ConcurrentHashMap<>());
        }
        this.a.get(cls).put(s40, executor);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        Queue<r40<?>> queue;
        Set<Map.Entry<s40<Object>, Executor>> emptySet;
        synchronized (this) {
            queue = this.b;
            if (queue != null) {
                this.b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (r40<?> r40 : queue) {
                Objects.requireNonNull(r40);
                synchronized (this) {
                    Queue<r40<?>> queue2 = this.b;
                    if (queue2 != null) {
                        queue2.add(r40);
                    } else {
                        synchronized (this) {
                            ConcurrentHashMap<s40<Object>, Executor> concurrentHashMap = this.a.get(null);
                            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
                        }
                        for (Map.Entry<s40<Object>, Executor> entry : emptySet) {
                            entry.getValue().execute(t.a(entry, r40));
                        }
                    }
                }
            }
        }
    }
}
