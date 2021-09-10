package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzsr extends zzgw implements zzsp {
    zzsr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void onAppOpenAdFailedToLoad(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void zza(zzsk zzsk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzsk);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void zza(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(3, zzdo);
    }
}
