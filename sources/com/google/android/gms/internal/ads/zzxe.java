package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzxe extends zzgw implements zzxc {
    zzxe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void onAdLoaded() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void zzc(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(2, zzdo);
    }
}
