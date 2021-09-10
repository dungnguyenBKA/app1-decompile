package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzavt extends zzgw implements zzavr {
    zzavt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdClosed() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdFailedToShow(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdOpened() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zza(zzavl zzavl) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavl);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zzi(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(5, zzdo);
    }
}
