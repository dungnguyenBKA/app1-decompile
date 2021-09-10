package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

final class zzmk implements Parcelable.Creator<zzmi> {
    zzmk() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmi createFromParcel(Parcel parcel) {
        return new zzmi(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmi[] newArray(int i) {
        return new zzmi[i];
    }
}
