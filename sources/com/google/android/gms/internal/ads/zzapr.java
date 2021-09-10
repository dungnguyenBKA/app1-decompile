package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzapr extends zzgw implements zzapp {
    zzapr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void onFailure(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzdn(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzh(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(3, zzdo);
    }
}
