package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzavy extends zzgw implements zzavz {
    zzavy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzavz
    public final void zza(zzavl zzavl, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavl);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(2, zzdo);
    }
}
