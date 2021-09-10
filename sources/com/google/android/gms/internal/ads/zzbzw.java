package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;

public final class zzbzw implements zzq {
    private final zzbtj zzgbl;
    private final zzbxw zzgbm;

    public zzbzw(zzbtj zzbtj, zzbxw zzbxw) {
        this.zzgbl = zzbtj;
        this.zzgbm = zzbxw;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        this.zzgbl.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        this.zzgbl.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        this.zzgbl.onUserLeaveHint();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        this.zzgbl.zza(zzn);
        this.zzgbm.onHide();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        this.zzgbl.zzvo();
        this.zzgbm.zzamp();
    }
}
