package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

final /* synthetic */ class zzcmm implements Callable {
    private final Context zzcle;
    private final zzei zzgnz;

    zzcmm(zzei zzei, Context context) {
        this.zzgnz = zzei;
        this.zzcle = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzei zzei = this.zzgnz;
        return zzei.zzca().zzb(this.zzcle);
    }
}
