package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.g;
import com.google.android.gms.internal.play_billing.zza;

final class zzs extends ResultReceiver {
    public final void onReceiveResult(int i, Bundle bundle) {
        g.a c = g.c();
        c.c(i);
        c.b(zza.zzb(bundle, "BillingClient"));
        c.a();
        throw null;
    }
}
