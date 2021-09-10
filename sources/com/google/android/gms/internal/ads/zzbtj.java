package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;

public final class zzbtj extends zzbwf<zzq> implements zzq {
    public zzbtj(Set<zzbya<zzq>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onPause() {
        zza(zzbtk.zzfzg);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onResume() {
        zza(zzbtn.zzfzg);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onUserLeaveHint() {
        zza(zzbtl.zzfzg);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void zza(zzn zzn) {
        zza(new zzbti(zzn));
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void zzvo() {
        zza(zzbtm.zzfzg);
    }
}
