package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcmg implements zzdyu {
    static final zzdyu zzboq = new zzcmg();

    private zzcmg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return zzdzk.immediateFailedFuture(((ExecutionException) obj).getCause());
    }
}
