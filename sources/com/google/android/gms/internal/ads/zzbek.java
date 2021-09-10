package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;

/* access modifiers changed from: package-private */
public final class zzbek implements zzq {
    private zzq zzdsv;
    private zzbeb zzerq;

    public zzbek(zzbeb zzbeb, zzq zzq) {
        this.zzerq = zzbeb;
        this.zzdsv = zzq;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.zza(zzn);
        }
        this.zzerq.zzacq();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.zzvo();
        }
        this.zzerq.zzwb();
    }
}
