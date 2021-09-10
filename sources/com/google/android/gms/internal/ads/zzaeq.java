package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzaeq extends zzgy implements zzaer {
    public zzaeq() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzaer zzo(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        if (queryLocalInterface instanceof zzaer) {
            return (zzaer) queryLocalInterface;
        }
        return new zzaet(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zv zzti = zzti();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzti);
        } else if (i == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, uri);
        } else if (i == 3) {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
        } else if (i == 4) {
            int width = getWidth();
            parcel2.writeNoException();
            parcel2.writeInt(width);
        } else if (i != 5) {
            return false;
        } else {
            int height = getHeight();
            parcel2.writeNoException();
            parcel2.writeInt(height);
        }
        return true;
    }
}
