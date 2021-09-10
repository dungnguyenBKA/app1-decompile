package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzajz extends zzgy implements zzajw {
    public zzajz() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzue();
        } else if (i != 2) {
            return false;
        } else {
            zzda(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
