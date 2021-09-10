package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzbfy extends zzgy implements zzbfv {
    public static zzbfv zzau(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        if (queryLocalInterface instanceof zzbfv) {
            return (zzbfv) queryLocalInterface;
        }
        return new zzbfx(iBinder);
    }
}
