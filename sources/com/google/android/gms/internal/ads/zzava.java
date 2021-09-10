package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzava extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzava> CREATOR = new zzavd();
    public final String zzbut;
    public final zzvl zzdud;

    public zzava(zzvl zzvl, String str) {
        this.zzdud = zzvl;
        this.zzbut = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.q(parcel, 2, this.zzdud, i, false);
        b.r(parcel, 3, this.zzbut, false);
        b.b(parcel, a);
    }
}
