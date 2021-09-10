package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzxg extends zzgy implements zzxd {
    public zzxg() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb((zzvl) zzgx.zza(parcel, zzvl.CREATOR));
            parcel2.writeNoException();
        } else if (i == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
        } else if (i == 3) {
            boolean isLoading = isLoading();
            parcel2.writeNoException();
            zzgx.writeBoolean(parcel2, isLoading);
        } else if (i == 4) {
            String zzkh = zzkh();
            parcel2.writeNoException();
            parcel2.writeString(zzkh);
        } else if (i != 5) {
            return false;
        } else {
            zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readInt());
            parcel2.writeNoException();
        }
        return true;
    }
}
