package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class v extends t {
    private final Callable<String> e;

    v(Callable callable, w wVar) {
        super(false, null, null);
        this.e = callable;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.t
    public final String c() {
        try {
            return this.e.call();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
