package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzxb extends zzgy implements zzxc {
    public zzxb() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onAdLoaded();
        } else if (i != 2) {
            return false;
        } else {
            zzc((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
