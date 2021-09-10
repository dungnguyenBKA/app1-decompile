package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzacn extends zzgw implements zzacl {
    zzacn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void zza(zzacg zzacg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzacg);
        zzb(1, zzdo);
    }
}
