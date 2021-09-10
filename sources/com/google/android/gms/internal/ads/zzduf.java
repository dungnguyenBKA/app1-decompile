package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzduf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduf> CREATOR = new zzdui();
    private final int versionCode;
    private final byte[] zzhtx;

    zzduf(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhtx = bArr;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.f(parcel, 2, this.zzhtx, false);
        b.b(parcel, a);
    }

    public zzduf(byte[] bArr) {
        this(1, bArr);
    }
}
