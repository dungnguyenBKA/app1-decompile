package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxq implements Callable {
    private final Context zzcle;
    private final zzaxc zzebo;

    zzaxq(zzaxc zzaxc, Context context) {
        this.zzebo = zzaxc;
        this.zzcle = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzebo.zzag(this.zzcle);
    }
}
