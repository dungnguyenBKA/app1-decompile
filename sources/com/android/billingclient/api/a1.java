package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zza;

final class a1 implements Runnable {
    private final /* synthetic */ int b;
    private final /* synthetic */ i c;
    private final /* synthetic */ g d;
    private final /* synthetic */ String e;

    a1(int i, i iVar, g gVar, String str) {
        this.b = i;
        this.c = iVar;
        this.d = gVar;
        this.e = str;
    }

    public final void run() {
        int i = this.b;
        StringBuilder sb = new StringBuilder(63);
        sb.append("Error consuming purchase with token. Response code: ");
        sb.append(i);
        zza.zzb("BillingClient", sb.toString());
        this.c.f(this.d, this.e);
    }
}
