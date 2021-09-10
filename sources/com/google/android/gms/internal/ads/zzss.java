package com.google.android.gms.internal.ads;

import android.os.IBinder;

public final class zzss extends zzgw implements zzsq {
    zzss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void onAppOpenAdClosed() {
        zzb(1, zzdo());
    }
}
