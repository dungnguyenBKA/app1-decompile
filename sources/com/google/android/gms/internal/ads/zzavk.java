package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzavk extends zzgy implements zzavl {
    public zzavk() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    public static zzavl zzaq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        if (queryLocalInterface instanceof zzavl) {
            return (zzavl) queryLocalInterface;
        }
        return new zzavn(iBinder);
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
