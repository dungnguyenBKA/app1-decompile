package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzavq extends zzgy implements zzavr {
    public zzavq() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzavl zzavl;
        if (i == 1) {
            onRewardedAdOpened();
        } else if (i == 2) {
            onRewardedAdClosed();
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzavl = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                if (queryLocalInterface instanceof zzavl) {
                    zzavl = (zzavl) queryLocalInterface;
                } else {
                    zzavl = new zzavn(readStrongBinder);
                }
            }
            zza(zzavl);
        } else if (i == 4) {
            onRewardedAdFailedToShow(parcel.readInt());
        } else if (i != 5) {
            return false;
        } else {
            zzi((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
