package defpackage;

import android.content.Context;
import javax.inject.Provider;

/* renamed from: jv  reason: default package */
public final class jv implements qt<iv> {
    private final Provider<Context> a;
    private final Provider<String> b;
    private final Provider<Integer> c;

    public jv(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new iv(this.a.get(), this.b.get(), this.c.get().intValue());
    }
}
