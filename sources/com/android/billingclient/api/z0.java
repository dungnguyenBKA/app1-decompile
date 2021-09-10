package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zza;

/* access modifiers changed from: package-private */
public final class z0 implements Runnable {
    private final /* synthetic */ Exception b;
    private final /* synthetic */ i c;
    private final /* synthetic */ String d;

    z0(Exception exc, i iVar, String str) {
        this.b = exc;
        this.c = iVar;
        this.d = str;
    }

    public final void run() {
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
        sb.append("Error consuming purchase; ex: ");
        sb.append(valueOf);
        zza.zzb("BillingClient", sb.toString());
        this.c.f(a0.n, this.d);
    }
}
