package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzavo extends zzgw implements zzavm {
    zzavo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final Bundle getAdMetadata() {
        Parcel zza = zza(9, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final boolean isLoaded() {
        Parcel zza = zza(3, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void setImmersiveMode(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzvl zzvl, zzavu zzavu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zzavu);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zzb(zzvl zzvl, zzavu zzavu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zzavu);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zze(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzyx zzki() {
        Parcel zza = zza(12, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzavl zzrv() {
        zzavl zzavl;
        Parcel zza = zza(11, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzavl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            if (queryLocalInterface instanceof zzavl) {
                zzavl = (zzavl) queryLocalInterface;
            } else {
                zzavl = new zzavn(readStrongBinder);
            }
        }
        zza.recycle();
        return zzavl;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavr zzavr) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavr);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavz zzavz) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavz);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzawh zzawh) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzawh);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyr zzyr) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyr);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zv zvVar, boolean z) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.writeBoolean(zzdo, z);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyw zzyw) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyw);
        zzb(13, zzdo);
    }
}
