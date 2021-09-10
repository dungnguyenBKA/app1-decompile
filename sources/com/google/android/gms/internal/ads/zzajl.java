package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzajl extends zzgw implements zzajj {
    zzajl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationFailed(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationSucceeded() {
        zzb(2, zzdo());
    }
}
