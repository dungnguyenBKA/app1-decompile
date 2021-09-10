package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzaka extends zzgy implements zzakb {
    public zzaka() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    public static zzakb zzab(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
        if (queryLocalInterface instanceof zzakb) {
            return (zzakb) queryLocalInterface;
        }
        return new zzakd(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzajv zzajv;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzajv = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                if (queryLocalInterface instanceof zzajv) {
                    zzajv = (zzajv) queryLocalInterface;
                } else {
                    zzajv = new zzajx(readStrongBinder);
                }
            }
            zza(zzajv);
        } else if (i == 2) {
            onInstreamAdFailedToLoad(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            zze((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
