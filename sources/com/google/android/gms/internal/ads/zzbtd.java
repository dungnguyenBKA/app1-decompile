package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

final /* synthetic */ class zzbtd implements zzbwh {
    static final zzbwh zzfzg = new zzbtd();

    private zzbtd() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzo(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
