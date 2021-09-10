package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;

/* access modifiers changed from: package-private */
public final class zzals implements zzbac {
    private final /* synthetic */ zzalm zzdki;

    zzals(zzalq zzalq, zzalm zzalm) {
        this.zzdki = zzalm;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        zzd.zzeb("Rejecting reference for JS Engine.");
        this.zzdki.reject();
    }
}
