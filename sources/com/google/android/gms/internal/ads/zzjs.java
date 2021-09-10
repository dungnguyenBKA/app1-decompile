package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzjo;

final class zzjs implements Parcelable.Creator<zzjo.zza> {
    zzjs() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjo.zza createFromParcel(Parcel parcel) {
        return new zzjo.zza(parcel);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjo.zza[] newArray(int i) {
        return new zzjo.zza[i];
    }
}
