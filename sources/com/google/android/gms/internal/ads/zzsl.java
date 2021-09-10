package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;

public final class zzsl extends zzsu {
    private FullScreenContentCallback zzbuy;

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void onAdDismissedFullScreenContent() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void onAdShowedFullScreenContent() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuy = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void zzb(zzvg zzvg) {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuy;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvg.zzqb());
        }
    }
}
