package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import javax.inject.Provider;

public final class l implements qt<k> {
    private final Provider<Context> a;
    private final Provider<i> b;

    public l(Provider<Context> provider, Provider<i> provider2) {
        this.a = provider;
        this.b = provider2;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new k(this.a.get(), this.b.get());
    }
}
