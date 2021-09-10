package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzyd extends zzgw implements zzyb {
    zzyd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void onAdDismissedFullScreenContent() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void onAdShowedFullScreenContent() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzb(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(1, zzdo);
    }
}
