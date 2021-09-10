package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdlq implements zzdkc {
    static final zzdkc zzgya = new zzdlq();

    private zzdlq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
