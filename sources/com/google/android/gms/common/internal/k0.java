package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzd;

public abstract class k0 extends zza implements i0 {
    public k0() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static i0 O(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        if (queryLocalInterface instanceof i0) {
            return (i0) queryLocalInterface;
        }
        return new j0(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.common.zza
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zv zzb = zzb();
            parcel2.writeNoException();
            zzd.zza(parcel2, zzb);
        } else if (i != 2) {
            return false;
        } else {
            int zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeInt(zzc);
        }
        return true;
    }
}
