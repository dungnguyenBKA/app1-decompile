package com.google.android.gms.ads.internal.util;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class x implements Runnable {
    private final /* synthetic */ Context b;
    private final /* synthetic */ zzj c;

    x(zzj zzj, Context context) {
        this.c = zzj;
        this.b = context;
    }

    public final void run() {
        synchronized (this.c.d) {
            this.c.e = zzj.i(this.b);
            this.c.d.notifyAll();
        }
    }
}
