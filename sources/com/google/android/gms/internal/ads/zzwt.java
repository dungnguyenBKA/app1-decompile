package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;

public final class zzwt extends zzye {
    private final FullScreenContentCallback zzbuy;

    public zzwt(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuy = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void onAdDismissedFullScreenContent() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void onAdShowedFullScreenContent() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzb(zzvg zzvg) {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvg.zzqb());
        }
    }
}
