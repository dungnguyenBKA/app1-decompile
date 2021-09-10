package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;

final class zzaqd implements zzq {
    private final /* synthetic */ zzaqa zzdpb;

    zzaqd(zzaqa zzaqa) {
        this.zzdpb = zzaqa;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is closed.");
        zzaqa.zza(this.zzdpb).onAdClosed(this.zzdpb);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzazk.zzdy("Opening AdMobCustomTabsAdapter overlay.");
        zzaqa.zza(this.zzdpb).onAdOpened(this.zzdpb);
    }
}
