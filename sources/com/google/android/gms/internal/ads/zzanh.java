package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzanh extends zzgy implements zzane {
    public zzanh() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzane zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (queryLocalInterface instanceof zzane) {
            return (zzane) queryLocalInterface;
        }
        return new zzang(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzanj zzdd = zzdd(parcel.readString());
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdd);
        } else if (i == 2) {
            boolean zzde = zzde(parcel.readString());
            parcel2.writeNoException();
            zzgx.writeBoolean(parcel2, zzde);
        } else if (i != 3) {
            return false;
        } else {
            zzapk zzdf = zzdf(parcel.readString());
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdf);
        }
        return true;
    }
}
