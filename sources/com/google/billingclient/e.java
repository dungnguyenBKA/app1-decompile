package com.google.billingclient;

public final /* synthetic */ class e implements je0 {
    public static final /* synthetic */ e a = new e();

    private /* synthetic */ e() {
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        int i = g.h;
        BillingHelper.c("BillingManager", "getInAppPurchases onError: " + ((Throwable) obj));
    }
}
