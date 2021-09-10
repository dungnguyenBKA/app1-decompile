package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public abstract class zzaei extends zzgy implements zzaej {
    public zzaei() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static zzaej zzm(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        if (queryLocalInterface instanceof zzaej) {
            return (zzaej) queryLocalInterface;
        }
        return new zzael(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            String text = getText();
            parcel2.writeNoException();
            parcel2.writeString(text);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzaer> zztd = zztd();
            parcel2.writeNoException();
            parcel2.writeList(zztd);
            return true;
        }
    }
}
