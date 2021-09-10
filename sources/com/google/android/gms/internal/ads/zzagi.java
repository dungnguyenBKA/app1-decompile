package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzagi extends zzgw implements zzagg {
    zzagi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagr zzagr) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagr);
        zzb(1, zzdo);
    }
}
