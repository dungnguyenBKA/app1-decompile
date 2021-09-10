package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzbto extends zzbwf<zzbtt> implements zzbse, zzbtg {
    private final zzdmw zzfrj;
    private AtomicBoolean zzfzo = new AtomicBoolean();

    public zzbto(Set<zzbya<zzbtt>> set, zzdmw zzdmw) {
        super(set);
        this.zzfrj = zzdmw;
    }

    private final void zzalr() {
        zzvu zzvu;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczg)).booleanValue() && this.zzfzo.compareAndSet(false, true) && (zzvu = this.zzfrj.zzhjv) != null && zzvu.type == 3) {
            zza(new zzbtr(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        int i = this.zzfrj.zzhiy;
        if (i == 2 || i == 5 || i == 4) {
            zzalr();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzbtt zzbtt) {
        zzbtt.zzb(this.zzfrj.zzhjv);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        if (this.zzfrj.zzhiy == 1) {
            zzalr();
        }
    }
}
