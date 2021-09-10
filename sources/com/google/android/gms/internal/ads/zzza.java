package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public abstract class zzza extends zzgy implements zzyx {
    public zzza() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzyx zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        if (queryLocalInterface instanceof zzyx) {
            return (zzyx) queryLocalInterface;
        }
        return new zzyz(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
        } else if (i == 2) {
            String responseId = getResponseId();
            parcel2.writeNoException();
            parcel2.writeString(responseId);
        } else if (i != 3) {
            return false;
        } else {
            List<zzvw> adapterResponses = getAdapterResponses();
            parcel2.writeNoException();
            parcel2.writeTypedList(adapterResponses);
        }
        return true;
    }
}
