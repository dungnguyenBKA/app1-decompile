package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzsx extends zzgw implements zzsv {
    zzsx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void onAdDismissedFullScreenContent() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void onAdShowedFullScreenContent() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void zzb(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(3, zzdo);
    }
}
