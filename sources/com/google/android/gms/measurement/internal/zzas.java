package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Objects;

public final class zzas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzas> CREATOR = new r();
    public final String b;
    public final zzaq c;
    public final String d;
    public final long e;

    zzas(zzas zzas, long j) {
        Objects.requireNonNull(zzas, "null reference");
        this.b = zzas.b;
        this.c = zzas.c;
        this.d = zzas.d;
        this.e = j;
    }

    public final String toString() {
        String str = this.d;
        String str2 = this.b;
        String valueOf = String.valueOf(this.c);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        return ic.l(sb, ",params=", valueOf);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        r.a(this, parcel, i);
    }

    public zzas(String str, zzaq zzaq, String str2, long j) {
        this.b = str;
        this.c = zzaq;
        this.d = str2;
        this.e = j;
    }
}
