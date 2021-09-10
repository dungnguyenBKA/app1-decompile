package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzagn extends zzgw implements zzagl {
    zzagn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // com.google.android.gms.internal.ads.zzagl
    public final boolean zzm(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(2, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }
}
