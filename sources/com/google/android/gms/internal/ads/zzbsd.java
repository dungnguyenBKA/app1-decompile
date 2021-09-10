package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsd extends zzbwf<zzbse> {
    private boolean zzfzj = false;

    public zzbsd(Set<zzbya<zzbse>> set) {
        super(set);
    }

    public final synchronized void onAdImpression() {
        if (!this.zzfzj) {
            zza(zzbsc.zzfzg);
            this.zzfzj = true;
        }
    }
}
