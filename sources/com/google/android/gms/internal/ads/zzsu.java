package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzsu extends zzgy implements zzsv {
    public zzsu() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onAdShowedFullScreenContent();
        } else if (i == 2) {
            onAdDismissedFullScreenContent();
        } else if (i != 3) {
            return false;
        } else {
            zzb((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
