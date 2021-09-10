package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzakd extends zzgw implements zzakb {
    zzakd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void onInstreamAdFailedToLoad(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zza(zzajv zzajv) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzajv);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zze(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(3, zzdo);
    }
}
