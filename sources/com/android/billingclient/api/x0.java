package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zza;

/* access modifiers changed from: package-private */
public final class x0 implements Runnable {
    private final /* synthetic */ i b;
    private final /* synthetic */ g c;
    private final /* synthetic */ String d;

    x0(i iVar, g gVar, String str) {
        this.b = iVar;
        this.c = gVar;
        this.d = str;
    }

    public final void run() {
        zza.zza("BillingClient", "Successfully consumed purchase.");
        this.b.f(this.c, this.d);
    }
}
