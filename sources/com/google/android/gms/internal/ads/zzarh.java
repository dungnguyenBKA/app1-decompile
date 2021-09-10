package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

public final class zzarh extends zzgw implements zzarf {
    zzarh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(Intent intent) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, intent);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzvt() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(zv zvVar, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(2, zzdo);
    }
}
