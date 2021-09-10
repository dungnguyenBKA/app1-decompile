package com.google.billingclient;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.e;
import com.android.billingclient.api.g;
import java.util.List;

/* access modifiers changed from: package-private */
public class j implements e {
    final /* synthetic */ Activity a;
    final /* synthetic */ List b;
    final /* synthetic */ g c;

    j(g gVar, Activity activity, List list) {
        this.c = gVar;
        this.a = activity;
        this.b = list;
    }

    @Override // com.android.billingclient.api.e
    public void d(g gVar) {
        BillingHelper.c("BillingManager", "Setup BillingClient finished");
        Context unused = this.c.a;
        BillingHelper.b(gVar);
        int b2 = gVar.b();
        if (b2 == 0) {
            g.e(this.c);
            this.c.u("subs");
        } else if (this.c.d != null) {
            this.c.d.a(this.a, this.b, b2);
        }
    }

    @Override // com.android.billingclient.api.e
    public void e() {
        BillingHelper.a("BillingManager", "onBillingServiceDisconnected");
    }
}
