package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;

/* access modifiers changed from: package-private */
public final class h0 {
    private final Context a;
    private final i0 b;

    h0(Context context, m mVar) {
        this.a = context;
        this.b = new i0(this, mVar, null);
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.b.b(this.a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* access modifiers changed from: package-private */
    public final m c() {
        return i0.a(this.b);
    }
}
