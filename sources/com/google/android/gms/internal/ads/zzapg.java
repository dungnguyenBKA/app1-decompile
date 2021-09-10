package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzapg extends zzgw implements zzape {
    zzapg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zza(zzanx zzanx) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzanx);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzdl(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzg(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(3, zzdo);
    }
}
