package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzyz extends zzgw implements zzyx {
    zzyz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final List<zzvw> getAdapterResponses() {
        Parcel zza = zza(3, zzdo());
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzvw.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(1, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getResponseId() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
