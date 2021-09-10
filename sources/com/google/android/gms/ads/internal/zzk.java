package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzj();
    private final String b;
    public final boolean zzbpe;
    public final boolean zzbpf;
    public final boolean zzbph;
    public final float zzbpi;
    public final int zzbpj;
    public final boolean zzbpk;
    public final boolean zzbpl;
    public final boolean zzbpm;

    public zzk(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 2, this.zzbpe);
        b.c(parcel, 3, this.zzbpf);
        b.r(parcel, 4, this.b, false);
        b.c(parcel, 5, this.zzbph);
        b.h(parcel, 6, this.zzbpi);
        b.k(parcel, 7, this.zzbpj);
        b.c(parcel, 8, this.zzbpk);
        b.c(parcel, 9, this.zzbpl);
        b.c(parcel, 10, this.zzbpm);
        b.b(parcel, a);
    }

    zzk(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zzbpe = z;
        this.zzbpf = z2;
        this.b = str;
        this.zzbph = z3;
        this.zzbpi = f;
        this.zzbpj = i;
        this.zzbpk = z4;
        this.zzbpl = z5;
        this.zzbpm = z6;
    }
}
