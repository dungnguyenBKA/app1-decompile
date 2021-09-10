package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzaux extends zzgy implements zzauu {
    public zzaux() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    public static zzauu zzao(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if (queryLocalInterface instanceof zzauu) {
            return (zzauu) queryLocalInterface;
        }
        return new zzauw(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzauk zzauk;
        switch (i) {
            case 1:
                onRewardedVideoAdLoaded();
                break;
            case 2:
                onRewardedVideoAdOpened();
                break;
            case 3:
                onRewardedVideoStarted();
                break;
            case 4:
                onRewardedVideoAdClosed();
                break;
            case 5:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzauk = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    if (queryLocalInterface instanceof zzauk) {
                        zzauk = (zzauk) queryLocalInterface;
                    } else {
                        zzauk = new zzaum(readStrongBinder);
                    }
                }
                zza(zzauk);
                break;
            case 6:
                onRewardedVideoAdLeftApplication();
                break;
            case 7:
                onRewardedVideoAdFailedToLoad(parcel.readInt());
                break;
            case 8:
                onRewardedVideoCompleted();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
