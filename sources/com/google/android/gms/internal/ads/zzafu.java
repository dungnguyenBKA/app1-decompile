package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzafu extends zzgw implements zzafs {
    zzafu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafs
    public final void zza(zzafj zzafj) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafj);
        zzb(1, zzdo);
    }
}
