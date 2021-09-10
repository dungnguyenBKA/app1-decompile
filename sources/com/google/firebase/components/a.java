package com.google.firebase.components;

import java.util.Set;

/* access modifiers changed from: package-private */
public abstract class a implements e {
    a() {
    }

    @Override // com.google.firebase.components.e
    public <T> T a(Class<T> cls) {
        d50<T> b = ((n) this).b(cls);
        if (b == null) {
            return null;
        }
        return b.get();
    }

    @Override // com.google.firebase.components.e
    public <T> Set<T> c(Class<T> cls) {
        return ((n) this).k(cls).get();
    }
}
