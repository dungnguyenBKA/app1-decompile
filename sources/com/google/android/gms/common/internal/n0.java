package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.zzj;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;

public final class n0 extends zzb implements m0 {
    n0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.m0
    public final boolean I(zzj zzj, zv zvVar) {
        Parcel a_ = a_();
        zzd.zza(a_, zzj);
        zzd.zza(a_, zvVar);
        Parcel zza = zza(5, a_);
        boolean zza2 = zzd.zza(zza);
        zza.recycle();
        return zza2;
    }
}
