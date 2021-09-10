package com.android.billingclient.api;

import com.android.billingclient.api.d;

/* access modifiers changed from: package-private */
public final class v implements Runnable {
    private final /* synthetic */ g b;
    private final /* synthetic */ d.a c;

    v(d.a aVar, g gVar) {
        this.c = aVar;
        this.b = gVar;
    }

    public final void run() {
        synchronized (this.c.a) {
            if (this.c.b != null) {
                this.c.b.d(this.b);
            }
        }
    }
}
