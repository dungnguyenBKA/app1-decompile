package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzdsw extends zzgy implements zzdst {
    public static zzdst zzav(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        if (queryLocalInterface instanceof zzdst) {
            return (zzdst) queryLocalInterface;
        }
        return new zzdsv(iBinder);
    }
}
