package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

public final class zzaam extends zzyu {
    private final OnAdMetadataChangedListener zzclq;

    public zzaam(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzclq = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void onAdMetadataChanged() {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.zzclq;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
