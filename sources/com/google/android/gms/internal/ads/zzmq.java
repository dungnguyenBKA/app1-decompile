package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

final class zzmq implements Parcelable.Creator<zzmn> {
    zzmq() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmn createFromParcel(Parcel parcel) {
        return new zzmn(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmn[] newArray(int i) {
        return new zzmn[i];
    }
}
