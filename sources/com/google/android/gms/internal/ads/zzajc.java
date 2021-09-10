package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzajc implements Runnable {
    private final /* synthetic */ zzajb zzdis;

    zzajc(zzajb zzajb) {
        this.zzdis = zzajb;
    }

    public final void run() {
        this.zzdis.disconnect();
    }
}
