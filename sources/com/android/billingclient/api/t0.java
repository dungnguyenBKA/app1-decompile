package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zza;

final class t0 implements Runnable {
    private final /* synthetic */ Exception b;
    private final /* synthetic */ q0 c;

    t0(q0 q0Var, Exception exc) {
        this.c = q0Var;
        this.b = exc;
    }

    public final void run() {
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        zza.zzb("BillingClient", sb.toString());
        this.c.c.b(a0.n);
    }
}
