package com.google.android.gms.internal.ads;

import android.os.IBinder;

public final class zzwy extends zzgw implements zzww {
    zzwy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final void onAdClicked() {
        zzb(1, zzdo());
    }
}
