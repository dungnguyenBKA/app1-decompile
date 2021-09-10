package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.ce  reason: case insensitive filesystem */
public abstract class AbstractC1169ce<T> extends AbstractRunnableC0603Kb {
    public final WeakReference<T> A00;

    public AbstractC1169ce(T t) {
        this.A00 = new WeakReference<>(t);
    }

    public final T A08() {
        return this.A00.get();
    }
}
