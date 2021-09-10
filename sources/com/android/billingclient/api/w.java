package com.android.billingclient.api;

import com.android.billingclient.api.d;

final class w implements Runnable {
    private final /* synthetic */ d.a b;

    w(d.a aVar) {
        this.b = aVar;
    }

    public final void run() {
        d.this.a = 0;
        d.this.g = null;
        d.a.b(this.b, a0.o);
    }
}
