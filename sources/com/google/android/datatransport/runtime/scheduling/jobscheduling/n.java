package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.e;
import java.util.concurrent.Executor;
import javax.inject.Provider;

public final class n implements qt<m> {
    private final Provider<Context> a;
    private final Provider<e> b;
    private final Provider<eu> c;
    private final Provider<s> d;
    private final Provider<Executor> e;
    private final Provider<lv> f;
    private final Provider<mv> g;

    public n(Provider<Context> provider, Provider<e> provider2, Provider<eu> provider3, Provider<s> provider4, Provider<Executor> provider5, Provider<lv> provider6, Provider<mv> provider7) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
        this.g = provider7;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new m(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get());
    }
}
