package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzapc extends zzgy implements zzapd {
    public zzapc() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            zzvn();
        } else if (i == 3) {
            zzdl(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            zzg((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
