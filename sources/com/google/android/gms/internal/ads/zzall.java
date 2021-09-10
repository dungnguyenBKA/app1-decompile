package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;

/* access modifiers changed from: package-private */
public final class zzall implements zzbac {
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzalq zzdka;

    zzall(zzakz zzakz, zzalq zzalq) {
        this.zzdjw = zzakz;
        this.zzdka = zzalq;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        synchronized (this.zzdjw.lock) {
            this.zzdjw.status = 1;
            zzd.zzeb("Failed loading new engine. Marking new engine destroyable.");
            this.zzdka.zzuo();
        }
    }
}
