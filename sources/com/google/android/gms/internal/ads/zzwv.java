package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzwv extends zzgy implements zzww {
    public zzwv() {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        onAdClicked();
        parcel2.writeNoException();
        return true;
    }
}
