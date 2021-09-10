package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzavx extends zzgy implements zzavu {
    public zzavx() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onRewardedAdLoaded();
        } else if (i == 2) {
            onRewardedAdFailedToLoad(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            zzj((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
