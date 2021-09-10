package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzaxz extends zzgw implements zzaxx {
    zzaxz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void onError(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza(String str, String str2, Bundle bundle) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, bundle);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zzj(String str, String str2) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(1, zzdo);
    }
}
