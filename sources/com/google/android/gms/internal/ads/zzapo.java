package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzapo extends zzgy implements zzapp {
    public zzapo() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzdn(parcel.readString());
        } else if (i == 2) {
            onFailure(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzh((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
