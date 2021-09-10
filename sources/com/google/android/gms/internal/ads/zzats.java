package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzats extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzats> CREATOR = new zzatv();
    String zzdxm;

    public zzats(String str) {
        this.zzdxm = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.zzdxm, false);
        b.b(parcel, a);
    }
}
