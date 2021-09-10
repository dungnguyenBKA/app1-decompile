package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzafz extends zzgw implements zzafx {
    zzafz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(zzafn zzafn, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafn);
        zzdo.writeString(str);
        zzb(1, zzdo);
    }
}
