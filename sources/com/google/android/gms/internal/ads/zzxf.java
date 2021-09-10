package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzxf extends zzgw implements zzxd {
    zzxf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final boolean isLoading() {
        Parcel zza = zza(3, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zza(zzvl zzvl, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzdo.writeInt(i);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvl) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String zzkh() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
