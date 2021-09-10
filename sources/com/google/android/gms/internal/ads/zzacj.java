package com.google.android.gms.internal.ads;

import android.os.Parcel;
import defpackage.zv;

public abstract class zzacj extends zzgy implements zzacg {
    public zzacj() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String zzsq = zzsq();
            parcel2.writeNoException();
            parcel2.writeString(zzsq);
        } else if (i == 2) {
            String content = getContent();
            parcel2.writeNoException();
            parcel2.writeString(content);
        } else if (i == 3) {
            zzn(zv.a.O(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (i == 4) {
            recordClick();
            parcel2.writeNoException();
        } else if (i != 5) {
            return false;
        } else {
            recordImpression();
            parcel2.writeNoException();
        }
        return true;
    }
}
