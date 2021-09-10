package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzaye extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaye> CREATOR = new zzayh();
    public final String zzbrm;
    @Deprecated
    public final String zzbut;
    @Deprecated
    public final zzvs zzebq;
    public final zzvl zzebr;

    public zzaye(String str, String str2, zzvs zzvs, zzvl zzvl) {
        this.zzbut = str;
        this.zzbrm = str2;
        this.zzebq = zzvs;
        this.zzebr = zzvl;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzbut, false);
        b.r(parcel, 2, this.zzbrm, false);
        b.q(parcel, 3, this.zzebq, i, false);
        b.q(parcel, 4, this.zzebr, i, false);
        b.b(parcel, a);
    }
}
