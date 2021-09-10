package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzagh extends zzgw implements zzagf {
    zzagh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzxl zzxl, zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxl);
        zzgx.zza(zzdo, zvVar);
        zzb(1, zzdo);
    }
}
