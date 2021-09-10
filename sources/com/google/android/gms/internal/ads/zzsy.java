package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzsy implements Runnable {
    private final /* synthetic */ zzsz zzbvc;

    zzsy(zzsz zzsz) {
        this.zzbvc = zzsz;
    }

    public final void run() {
        this.zzbvc.disconnect();
    }
}
