package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzapl extends zzgw implements zzapj {
    zzapl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzdl(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzg(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzvn() {
        zzb(2, zzdo());
    }
}
