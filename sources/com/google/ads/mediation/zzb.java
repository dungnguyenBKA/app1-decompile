package com.google.ads.mediation;

import com.google.android.gms.ads.reward.AdMetadataListener;

final class zzb extends AdMetadataListener {
    private final /* synthetic */ AbstractAdViewAdapter zzmi;

    zzb(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzmi = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (AbstractAdViewAdapter.zzb(this.zzmi) != null && AbstractAdViewAdapter.zza(this.zzmi) != null) {
            AbstractAdViewAdapter.zza(this.zzmi).zzb(AbstractAdViewAdapter.zzb(this.zzmi).getAdMetadata());
        }
    }
}
