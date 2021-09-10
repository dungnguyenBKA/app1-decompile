package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zze implements Parcelable.Creator<PublisherAdViewOptions> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final PublisherAdViewOptions createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        boolean z2 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                z2 = a.m(parcel, readInt);
            } else if (i == 2) {
                iBinder = a.s(parcel, readInt);
            } else if (i != 3) {
                a.y(parcel, readInt);
            } else {
                iBinder2 = a.s(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new PublisherAdViewOptions(z2, iBinder, iBinder2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PublisherAdViewOptions[] newArray(int i) {
        return new PublisherAdViewOptions[i];
    }
}
