package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzzq implements Runnable {
    private final zzzn zzclc;
    private final Context zzcle;

    zzzq(zzzn zzzn, Context context) {
        this.zzclc = zzzn;
        this.zzcle = context;
    }

    public final void run() {
        this.zzclc.getRewardedVideoAdInstance(this.zzcle);
    }
}
