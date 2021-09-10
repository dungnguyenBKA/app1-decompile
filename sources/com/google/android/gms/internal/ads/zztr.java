package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;

final /* synthetic */ class zztr implements Runnable {
    private final zzbaa zzbwd;
    private final Future zzbwe;

    zztr(zzbaa zzbaa, Future future) {
        this.zzbwd = zzbaa;
        this.zzbwe = future;
    }

    public final void run() {
        zzbaa zzbaa = this.zzbwd;
        Future future = this.zzbwe;
        if (zzbaa.isCancelled()) {
            future.cancel(true);
        }
    }
}
