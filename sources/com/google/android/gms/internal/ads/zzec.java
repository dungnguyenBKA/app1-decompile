package com.google.android.gms.internal.ads;

import android.content.Context;

final class zzec implements Runnable {
    private final /* synthetic */ Context zzxl;

    zzec(zzea zzea, Context context) {
        this.zzxl = context;
    }

    public final void run() {
        try {
            zzea.zzxa.zzb(this.zzxl);
        } catch (Exception e) {
            zzea.zzxc.zza(2019, -1, e);
        }
    }
}
