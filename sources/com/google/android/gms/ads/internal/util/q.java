package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* access modifiers changed from: package-private */
public final class q extends BroadcastReceiver {
    private final /* synthetic */ zzbv a;

    q(zzbv zzbv) {
        this.a = zzbv;
    }

    public final void onReceive(Context context, Intent intent) {
        zzbv.a(this.a, context, intent);
    }
}
