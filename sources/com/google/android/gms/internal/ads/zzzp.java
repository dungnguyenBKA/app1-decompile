package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzzp implements Runnable {
    private final zzzn zzclc;
    private final OnInitializationCompleteListener zzcld;

    zzzp(zzzn zzzn, OnInitializationCompleteListener onInitializationCompleteListener) {
        this.zzclc = zzzn;
        this.zzcld = onInitializationCompleteListener;
    }

    public final void run() {
        this.zzclc.zza(this.zzcld);
    }
}
