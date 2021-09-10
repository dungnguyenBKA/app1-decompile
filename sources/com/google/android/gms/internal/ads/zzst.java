package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzst extends zzgy implements zzsq {
    public zzst() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        onAppOpenAdClosed();
        parcel2.writeNoException();
        return true;
    }
}
