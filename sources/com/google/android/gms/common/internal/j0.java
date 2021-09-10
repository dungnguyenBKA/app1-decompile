package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;

public final class j0 extends zzb implements i0 {
    j0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.i0
    public final zv zzb() {
        return ic.A(zza(1, a_()));
    }

    @Override // com.google.android.gms.common.internal.i0
    public final int zzc() {
        Parcel zza = zza(2, a_());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
