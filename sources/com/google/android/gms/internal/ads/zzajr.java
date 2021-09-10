package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzajr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajr> CREATOR = new zzajq();
    public final Bundle extras;
    public final String zzdiy;

    public zzajr(String str, Bundle bundle) {
        this.zzdiy = str;
        this.extras = bundle;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzdiy, false);
        b.e(parcel, 2, this.extras, false);
        b.b(parcel, a);
    }
}
