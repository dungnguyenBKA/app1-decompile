package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzyq extends zzgy implements zzyn {
    public zzyq() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    public static zzyn zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        if (queryLocalInterface instanceof zzyn) {
            return (zzyn) queryLocalInterface;
        }
        return new zzyp(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String description = getDescription();
            parcel2.writeNoException();
            parcel2.writeString(description);
        } else if (i != 2) {
            return false;
        } else {
            String zzre = zzre();
            parcel2.writeNoException();
            parcel2.writeString(zzre);
        }
        return true;
    }
}
