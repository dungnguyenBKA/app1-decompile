package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* access modifiers changed from: package-private */
public final class zzqu extends BroadcastReceiver {
    private final /* synthetic */ zzqs zzbrs;

    zzqu(zzqs zzqs) {
        this.zzbrs = zzqs;
    }

    public final void onReceive(Context context, Intent intent) {
        this.zzbrs.zzbr(3);
    }
}
