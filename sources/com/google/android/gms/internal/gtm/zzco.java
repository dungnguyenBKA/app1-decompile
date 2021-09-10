package com.google.android.gms.internal.gtm;

import android.os.Parcel;
import android.os.Parcelable;

final class zzco implements Parcelable.Creator<zzcp> {
    zzco() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* bridge */ /* synthetic */ zzcp createFromParcel(Parcel parcel) {
        return new zzcp(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* bridge */ /* synthetic */ zzcp[] newArray(int i) {
        return new zzcp[i];
    }
}
