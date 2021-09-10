package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaft extends zzgw implements zzafr {
    zzaft(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final void zza(zzaff zzaff) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaff);
        zzb(1, zzdo);
    }
}
