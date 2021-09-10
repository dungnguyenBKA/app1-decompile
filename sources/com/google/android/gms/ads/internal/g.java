package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class g implements Callable<zzei> {
    private final /* synthetic */ zzl b;

    g(zzl zzl) {
        this.b = zzl;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzei call() {
        return new zzei(zzef.zzb(this.b.b.zzbrp, this.b.e, false));
    }
}
