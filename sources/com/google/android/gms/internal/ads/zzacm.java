package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

public final class zzacm extends zzack {
    private final OnCustomRenderedAdLoadedListener zzcko;

    public zzacm(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcko = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void zza(zzacg zzacg) {
        this.zzcko.onCustomRenderedAdLoaded(new zzach(zzacg));
    }
}
