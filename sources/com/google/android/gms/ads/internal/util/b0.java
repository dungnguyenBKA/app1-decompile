package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* access modifiers changed from: package-private */
public final class b0 extends BroadcastReceiver {
    private final /* synthetic */ zzj a;

    b0(zzj zzj, v vVar) {
        this.a = zzj;
    }

    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.a.c = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.a.c = false;
        }
    }
}
