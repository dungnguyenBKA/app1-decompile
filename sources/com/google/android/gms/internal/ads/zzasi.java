package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzasi extends zzgy implements zzasj {
    public zzasi() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    public static zzasj zzam(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        if (queryLocalInterface instanceof zzasj) {
            return (zzasj) queryLocalInterface;
        }
        return new zzasl(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onSuccess(parcel.createTypedArrayList(Uri.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            onError(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
