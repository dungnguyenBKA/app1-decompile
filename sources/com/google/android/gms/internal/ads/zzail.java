package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzt;
import java.util.Map;

final class zzail implements zzt {
    private boolean zzdig = false;
    private final /* synthetic */ Map zzdih;
    private final /* synthetic */ Map zzdii;
    private final /* synthetic */ zzvc zzdij;

    zzail(zzaij zzaij, Map map, Map map2, zzvc zzvc) {
        this.zzdih = map;
        this.zzdii = map2;
        this.zzdij = zzvc;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zza(zzacr zzacr) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zzab(boolean z) {
        if (!this.zzdig) {
            this.zzdig = true;
            this.zzdih.put((String) this.zzdii.get("event_id"), Boolean.valueOf(z));
            ((zzaki) this.zzdij).zza("openIntentAsync", this.zzdih);
        }
    }
}
