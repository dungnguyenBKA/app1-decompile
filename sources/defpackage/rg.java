package defpackage;

import java.util.Objects;

/* renamed from: rg  reason: default package */
public class rg<T> implements he<T> {
    protected final T b;

    public rg(T t) {
        Objects.requireNonNull(t, "Argument must not be null");
        this.b = t;
    }

    @Override // defpackage.he
    public void a() {
    }

    @Override // defpackage.he
    public final int c() {
        return 1;
    }

    @Override // defpackage.he
    public Class<T> d() {
        return (Class<T>) this.b.getClass();
    }

    @Override // defpackage.he
    public final T get() {
        return this.b;
    }
}
