package com.google.android.gms.internal.ads;

import android.os.IBinder;

public final class zzyl extends zzgw implements zzyj {
    zzyl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void onAdMuted() {
        zzb(1, zzdo());
    }
}
