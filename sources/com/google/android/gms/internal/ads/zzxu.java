package com.google.android.gms.internal.ads;

import android.os.IBinder;

public final class zzxu extends zzgw implements zzxs {
    zzxu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void onAdMetadataChanged() {
        zzb(1, zzdo());
    }
}
