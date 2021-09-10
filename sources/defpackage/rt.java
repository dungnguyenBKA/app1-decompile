package defpackage;

import java.util.Objects;

/* renamed from: rt  reason: default package */
public final class rt<T> implements qt<T> {
    private final T a;

    private rt(T t) {
        this.a = t;
    }

    public static <T> qt<T> a(T t) {
        Objects.requireNonNull(t, "instance cannot be null");
        return new rt(t);
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.a;
    }
}
