package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;
import javax.inject.Provider;

public final class r implements qt<q> {
    private final Provider<Executor> a;
    private final Provider<eu> b;
    private final Provider<s> c;
    private final Provider<lv> d;

    public r(Provider<Executor> provider, Provider<eu> provider2, Provider<s> provider3, Provider<lv> provider4) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new q(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
