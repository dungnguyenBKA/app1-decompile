package com.vungle.warren.utility;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.List;

/* access modifiers changed from: package-private */
public class SafeObjectInputStream extends ObjectInputStream {
    private final List<Class<?>> allowed;

    SafeObjectInputStream(InputStream inputStream, List<Class<?>> list) {
        super(inputStream);
        this.allowed = list;
    }

    /* access modifiers changed from: protected */
    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
        Class<?> resolveClass = super.resolveClass(objectStreamClass);
        if (this.allowed == null || Number.class.isAssignableFrom(resolveClass) || String.class.equals(resolveClass) || resolveClass.isArray() || this.allowed.contains(resolveClass)) {
            return resolveClass;
        }
        StringBuilder q = ic.q("Deserialization is not allowed for ");
        q.append(objectStreamClass.getName());
        throw new IOException(q.toString());
    }
}
