package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzafb extends zzgy implements zzaey {
    public zzafb() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzaey zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        if (queryLocalInterface instanceof zzaey) {
            return (zzaey) queryLocalInterface;
        }
        return new zzafa(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zza(zv.a.O(parcel.readStrongBinder()));
        } else if (i == 2) {
            unregisterNativeAd();
        } else if (i != 3) {
            return false;
        } else {
            zzf(zv.a.O(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
