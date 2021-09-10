package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

final class zzpx implements Parcelable.Creator<zzpy> {
    zzpx() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpy createFromParcel(Parcel parcel) {
        return new zzpy(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpy[] newArray(int i) {
        return new zzpy[0];
    }
}
