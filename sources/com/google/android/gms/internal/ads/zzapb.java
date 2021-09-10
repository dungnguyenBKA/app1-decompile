package com.google.android.gms.internal.ads;

import android.os.Parcel;
import defpackage.zv;

public abstract class zzapb extends zzgy implements zzaoy {
    public zzapb() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzx(zv.a.O(parcel.readStrongBinder()));
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
