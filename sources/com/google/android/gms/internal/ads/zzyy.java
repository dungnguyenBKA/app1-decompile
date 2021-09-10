package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzyy extends zzgw implements zzyw {
    zzyy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zza(zzvu zzvu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvu);
        zzb(1, zzdo);
    }
}
