package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import javax.inject.Provider;

public final class j implements qt<i> {
    private final Provider<Context> a;
    private final Provider<mv> b;
    private final Provider<mv> c;

    public j(Provider<Context> provider, Provider<mv> provider2, Provider<mv> provider3) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new i(this.a.get(), this.b.get(), this.c.get());
    }
}
