package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzarj extends zzgy implements zzarg {
    public static zzarg zzah(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        if (queryLocalInterface instanceof zzarg) {
            return (zzarg) queryLocalInterface;
        }
        return new zzari(iBinder);
    }
}
