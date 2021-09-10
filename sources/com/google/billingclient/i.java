package com.google.billingclient;

/* access modifiers changed from: package-private */
public class i implements Runnable {
    final /* synthetic */ g b;

    i(g gVar) {
        this.b = gVar;
    }

    public void run() {
        BillingHelper.c("BillingManager", "Setup successful. Querying inventory.");
        g gVar = this.b;
        gVar.c = gVar.l();
    }
}
