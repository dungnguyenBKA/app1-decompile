package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzve extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzve> CREATOR = new zzvd();
    public final String zzche;
    public final String zzchf;

    public zzve(String str, String str2) {
        this.zzche = str;
        this.zzchf = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzche, false);
        b.r(parcel, 2, this.zzchf, false);
        b.b(parcel, a);
    }
}
