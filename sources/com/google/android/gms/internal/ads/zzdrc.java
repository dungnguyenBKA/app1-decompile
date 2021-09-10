package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdrc implements Callable {
    private final zzdqt zzhqb;

    zzdrc(zzdqt zzdqt) {
        this.zzhqb = zzdqt;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        this.zzhqb.run();
        return null;
    }
}
