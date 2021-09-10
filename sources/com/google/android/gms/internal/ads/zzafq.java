package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzafq extends zzgy implements zzafr {
    public zzafq() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    public static zzafr zzs(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        if (queryLocalInterface instanceof zzafr) {
            return (zzafr) queryLocalInterface;
        }
        return new zzaft(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzaff zzaff;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzaff = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            if (queryLocalInterface instanceof zzaff) {
                zzaff = (zzaff) queryLocalInterface;
            } else {
                zzaff = new zzafh(readStrongBinder);
            }
        }
        zza(zzaff);
        parcel2.writeNoException();
        return true;
    }
}
