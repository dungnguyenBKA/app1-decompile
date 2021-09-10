package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdta implements Callable {
    private final Context zzcmi;

    zzdta(Context context) {
        this.zzcmi = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return zzdsy.zzcj(this.zzcmi);
    }
}
