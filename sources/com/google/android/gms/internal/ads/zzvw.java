package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzvw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvw> CREATOR = new zzvv();
    public String zzcio;
    public long zzcip;
    public zzvg zzciq;
    public Bundle zzcir;

    public zzvw(String str, long j, zzvg zzvg, Bundle bundle) {
        this.zzcio = str;
        this.zzcip = j;
        this.zzciq = zzvg;
        this.zzcir = bundle;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzcio, false);
        b.n(parcel, 2, this.zzcip);
        b.q(parcel, 3, this.zzciq, i, false);
        b.e(parcel, 4, this.zzcir, false);
        b.b(parcel, a);
    }
}
