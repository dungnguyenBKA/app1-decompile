package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzaph extends zzgy implements zzape {
    public zzaph() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zza(zzanw.zzae(parcel.readStrongBinder()));
        } else if (i == 2) {
            zzdl(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzg((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
