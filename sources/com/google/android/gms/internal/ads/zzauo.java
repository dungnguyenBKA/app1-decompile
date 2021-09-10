package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzauo extends zzgw implements zzaup {
    zzauo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaup
    public final void zza(zzauk zzauk, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzauk);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(2, zzdo);
    }
}
