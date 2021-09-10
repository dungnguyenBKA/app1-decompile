package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzafa extends zzgw implements zzaey {
    zzafa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void unregisterNativeAd() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void zza(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void zzf(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(3, zzdo);
    }
}
