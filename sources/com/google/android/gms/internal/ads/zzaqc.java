package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzr;

final class zzaqc implements Runnable {
    private final /* synthetic */ AdOverlayInfoParcel zzdpa;
    private final /* synthetic */ zzaqa zzdpb;

    zzaqc(zzaqa zzaqa, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdpb = zzaqa;
        this.zzdpa = adOverlayInfoParcel;
    }

    public final void run() {
        zzr.zzkq();
        zzm.zza(zzaqa.zzb(this.zzdpb), this.zzdpa, true);
    }
}
