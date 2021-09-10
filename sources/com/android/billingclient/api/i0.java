package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.play_billing.zza;

public final class i0 extends BroadcastReceiver {
    private final m a;
    private boolean b;
    private final /* synthetic */ h0 c;

    i0(h0 h0Var, m mVar, g0 g0Var) {
        this.c = h0Var;
        this.a = mVar;
    }

    public final void b(Context context, IntentFilter intentFilter) {
        if (!this.b) {
            context.registerReceiver(this.c.b, intentFilter);
            this.b = true;
        }
    }

    public final void onReceive(Context context, Intent intent) {
        this.a.c(zza.zzb(intent, "BillingBroadcastManager"), zza.zza(intent.getExtras()));
    }
}
