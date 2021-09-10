package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* access modifiers changed from: package-private */
public final class zzem extends ContentObserver {
    final /* synthetic */ zzen zza;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzem(zzen zzen, Handler handler) {
        super(null);
        this.zza = zzen;
    }

    public final void onChange(boolean z) {
        this.zza.zzc();
    }
}
