package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzayc extends zzgy implements zzayd {
    public static zzayd zzat(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        if (queryLocalInterface instanceof zzayd) {
            return (zzayd) queryLocalInterface;
        }
        return new zzayf(iBinder);
    }
}
