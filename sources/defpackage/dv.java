package defpackage;

import javax.inject.Provider;

/* renamed from: dv  reason: default package */
public final class dv implements qt<cv> {
    private final Provider<mv> a;
    private final Provider<mv> b;
    private final Provider<fu> c;
    private final Provider<iv> d;

    public dv(Provider<mv> provider, Provider<mv> provider2, Provider<fu> provider3, Provider<iv> provider4) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new cv(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
