package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzdvl;

public final class zzbl {
    private HandlerThread a = null;
    private Handler b = null;
    private int c = 0;
    private final Object d = new Object();

    public final Handler getHandler() {
        return this.b;
    }

    public final Looper zzzp() {
        Looper looper;
        synchronized (this.d) {
            if (this.c != 0) {
                n.i(this.a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.a == null) {
                zzd.zzeb("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.a = handlerThread;
                handlerThread.start();
                this.b = new zzdvl(this.a.getLooper());
                zzd.zzeb("Looper thread started.");
            } else {
                zzd.zzeb("Resuming the looper thread");
                this.d.notifyAll();
            }
            this.c++;
            looper = this.a.getLooper();
        }
        return looper;
    }
}
