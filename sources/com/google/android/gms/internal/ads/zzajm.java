package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

public final class zzajm extends zzgw implements zzajk {
    zzajm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final void zze(List<zzajh> list) {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzb(1, zzdo);
    }
}
