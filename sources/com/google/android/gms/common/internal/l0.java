package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.common.zza;

public abstract class l0 extends zza implements m0 {
    public static m0 O(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        if (queryLocalInterface instanceof m0) {
            return (m0) queryLocalInterface;
        }
        return new n0(iBinder);
    }
}
