package com.google.android.gms.internal.ads;

import java.io.IOException;

final class zzmw implements Runnable {
    private final /* synthetic */ zzms zzbdl;
    private final /* synthetic */ IOException zzber;

    zzmw(zzms zzms, IOException iOException) {
        this.zzbdl = zzms;
        this.zzber = iOException;
    }

    public final void run() {
        this.zzbdl.zzbdn.zzb(this.zzber);
    }
}
