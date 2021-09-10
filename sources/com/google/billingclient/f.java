package com.google.billingclient;

import android.content.Context;
import com.android.billingclient.api.b;
import com.android.billingclient.api.g;

/* access modifiers changed from: package-private */
public class f implements Runnable {
    final /* synthetic */ com.android.billingclient.api.a b;
    final /* synthetic */ g c;

    class a implements b {
        a() {
        }

        @Override // com.android.billingclient.api.b
        public void b(g gVar) {
            StringBuilder q = ic.q("Acknowledge  purchase, ");
            q.append(gVar.b());
            BillingHelper.c("BillingManager", q.toString());
            Context unused = f.this.c.a;
            BillingHelper.b(gVar);
        }
    }

    f(g gVar, com.android.billingclient.api.a aVar) {
        this.c = gVar;
        this.b = aVar;
    }

    public void run() {
        this.c.b.a(this.b, new a());
    }
}
