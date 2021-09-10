package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzgw;
import com.google.android.gms.internal.ads.zzgx;

public final class zzbi extends zzgw implements zzbg {
    zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzap(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(zv zvVar, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        Parcel zza = zza(1, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }
}
