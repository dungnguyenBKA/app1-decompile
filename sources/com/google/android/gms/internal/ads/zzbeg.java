package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbeg implements Runnable {
    private final String zzdlh;

    zzbeg(String str) {
        this.zzdlh = str;
    }

    public final void run() {
        zzr.zzkv().zzxm().zzcr(this.zzdlh.substring(1));
    }
}
