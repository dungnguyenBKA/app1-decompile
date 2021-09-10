package com.google.billingclient;

import android.content.Context;
import com.android.billingclient.api.e;
import com.android.billingclient.api.g;

/* access modifiers changed from: package-private */
public class k implements e {
    final /* synthetic */ g a;

    k(g gVar) {
        this.a = gVar;
    }

    @Override // com.android.billingclient.api.e
    public void d(g gVar) {
        BillingHelper.c("BillingManager", "Setup BillingClient finished");
        Context unused = this.a.a;
        BillingHelper.b(gVar);
        if (gVar.b() == 0) {
            g.e(this.a);
            this.a.u("subs");
        }
    }

    @Override // com.android.billingclient.api.e
    public void e() {
        BillingHelper.a("BillingManager", "onBillingServiceDisconnected");
    }
}
