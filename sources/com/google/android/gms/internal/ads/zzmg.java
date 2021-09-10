package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

final class zzmg implements Parcelable.Creator<zzmh> {
    zzmg() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmh createFromParcel(Parcel parcel) {
        return new zzmh(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmh[] newArray(int i) {
        return new zzmh[0];
    }
}
