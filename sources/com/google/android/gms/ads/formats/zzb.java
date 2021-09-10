package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzb implements Parcelable.Creator<AdManagerAdViewOptions> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final AdManagerAdViewOptions createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        boolean z2 = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                z2 = a.m(parcel, readInt);
            } else if (i != 2) {
                a.y(parcel, readInt);
            } else {
                iBinder = a.s(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new AdManagerAdViewOptions(z2, iBinder);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions[] newArray(int i) {
        return new AdManagerAdViewOptions[i];
    }
}
