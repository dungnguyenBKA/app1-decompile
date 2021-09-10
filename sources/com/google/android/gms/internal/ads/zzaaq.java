package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaq> CREATOR = new zzaat();
    public final String zzbrb;

    public zzaaq(SearchAdRequest searchAdRequest) {
        this.zzbrb = searchAdRequest.getQuery();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 15, this.zzbrb, false);
        b.b(parcel, a);
    }

    zzaaq(String str) {
        this.zzbrb = str;
    }
}
