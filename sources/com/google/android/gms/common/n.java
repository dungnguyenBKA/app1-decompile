package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class n implements Callable {
    private final boolean b;
    private final String c;
    private final m d;

    n(boolean z, String str, m mVar) {
        this.b = z;
        this.c = str;
        this.d = mVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return l.b(this.b, this.c, this.d);
    }
}
