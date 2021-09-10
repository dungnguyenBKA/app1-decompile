package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzaun extends zzgy implements zzauk {
    public zzaun() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String type = getType();
            parcel2.writeNoException();
            parcel2.writeString(type);
        } else if (i != 2) {
            return false;
        } else {
            int amount = getAmount();
            parcel2.writeNoException();
            parcel2.writeInt(amount);
        }
        return true;
    }
}
