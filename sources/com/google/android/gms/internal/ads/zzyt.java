package com.google.android.gms.internal.ads;

import android.os.IBinder;

public final class zzyt extends zzgw implements zzyr {
    zzyt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void onAdMetadataChanged() {
        zzb(1, zzdo());
    }
}
