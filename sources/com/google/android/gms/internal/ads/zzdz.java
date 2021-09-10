package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;

/* access modifiers changed from: package-private */
public final class zzdz implements Runnable {
    zzdz() {
    }

    public final void run() {
        try {
            zzea.zzxa.zzbq();
            zzea.zzxa.zzbr();
        } catch (Exception e) {
            zzea.zzxc.zza(AdError.INTERNAL_ERROR_CODE, -1, e);
        }
    }
}
