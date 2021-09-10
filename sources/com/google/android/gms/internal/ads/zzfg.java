package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzfg implements Runnable {
    private final /* synthetic */ zzfc zzzo;

    zzfg(zzfc zzfc) {
        this.zzzo = zzfc;
    }

    public final void run() {
        zzabp.initialize(this.zzzo.context);
    }
}
