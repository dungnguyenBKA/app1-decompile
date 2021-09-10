package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;

public final class zzahc extends zzafv {
    private final NativeContentAd.OnContentAdLoadedListener zzdgs;

    public zzahc(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzdgs = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafs
    public final void zza(zzafj zzafj) {
        this.zzdgs.onContentAdLoaded(new zzafk(zzafj));
    }
}
