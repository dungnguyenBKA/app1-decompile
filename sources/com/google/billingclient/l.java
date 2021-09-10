package com.google.billingclient;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.f;
import com.android.billingclient.api.g;
import com.android.billingclient.api.n;

/* access modifiers changed from: package-private */
public class l implements Runnable {
    final /* synthetic */ n b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ Activity e;
    final /* synthetic */ g f;

    l(g gVar, n nVar, String str, String str2, Activity activity) {
        this.f = gVar;
        this.b = nVar;
        this.c = str;
        this.d = str2;
        this.e = activity;
    }

    public void run() {
        f.a f2 = f.f();
        f2.c(this.b);
        f2.b(this.c, this.d);
        f a = f2.a();
        StringBuilder q = ic.q("Launching in-app purchase flow, sku: ");
        q.append(a.d());
        q.append(", oldSku: ");
        q.append(a.a());
        BillingHelper.c("BillingManager", q.toString());
        g e2 = this.f.b.e(this.e, a);
        Context unused = this.f.a;
        BillingHelper.b(e2);
    }
}
