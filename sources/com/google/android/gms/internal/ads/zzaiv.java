package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaiv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiv> CREATOR = new zzaiu();
    public final byte[] data;
    public final int statusCode;
    public final boolean zzak;
    public final long zzal;
    public final String zzchg;
    public final String[] zzdin;
    public final String[] zzdio;
    public final boolean zzdip;

    zzaiv(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zzdip = z;
        this.zzchg = str;
        this.statusCode = i;
        this.data = bArr;
        this.zzdin = strArr;
        this.zzdio = strArr2;
        this.zzak = z2;
        this.zzal = j;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 1, this.zzdip);
        b.r(parcel, 2, this.zzchg, false);
        b.k(parcel, 3, this.statusCode);
        b.f(parcel, 4, this.data, false);
        b.s(parcel, 5, this.zzdin, false);
        b.s(parcel, 6, this.zzdio, false);
        b.c(parcel, 7, this.zzak);
        b.n(parcel, 8, this.zzal);
        b.b(parcel, a);
    }
}
