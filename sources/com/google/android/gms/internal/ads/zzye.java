package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzye extends zzgy implements zzyb {
    public zzye() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        } else if (i == 2) {
            onAdShowedFullScreenContent();
        } else if (i != 3) {
            return false;
        } else {
            onAdDismissedFullScreenContent();
        }
        parcel2.writeNoException();
        return true;
    }
}
