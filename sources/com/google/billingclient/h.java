package com.google.billingclient;

import com.android.billingclient.api.g;
import com.android.billingclient.api.j;
import com.android.billingclient.api.m;
import java.util.List;

/* access modifiers changed from: package-private */
public class h implements m {
    final /* synthetic */ m a;
    final /* synthetic */ g b;

    h(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
    }

    @Override // com.android.billingclient.api.m
    public void c(g gVar, List<j> list) {
        this.b.j(list);
        m mVar = this.a;
        if (mVar != null) {
            mVar.c(gVar, list);
        } else {
            BillingHelper.a("BillingManager", "update purchase failed, listener is null");
        }
    }
}
