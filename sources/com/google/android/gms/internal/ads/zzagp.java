package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzagp extends zzgy implements zzagm {
    public zzagp() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onUnconfirmedClickReceived(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            onUnconfirmedClickCancelled();
        }
        parcel2.writeNoException();
        return true;
    }
}
