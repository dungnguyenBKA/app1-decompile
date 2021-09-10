package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* access modifiers changed from: package-private */
public final class zzhn extends Handler {
    private final /* synthetic */ zzhk zzagh;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzhn(zzhk zzhk, Looper looper) {
        super(looper);
        this.zzagh = zzhk;
    }

    public final void handleMessage(Message message) {
        this.zzagh.zza(message);
    }
}
