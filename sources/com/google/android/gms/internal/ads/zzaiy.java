package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaiy extends zzgw implements zzaiz {
    zzaiy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzaiz
    public final void zza(zzait zzait, zzaix zzaix) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzait);
        zzgx.zza(zzdo, zzaix);
        zzc(2, zzdo);
    }
}
