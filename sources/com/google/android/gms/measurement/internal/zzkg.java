package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzkg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkg> CREATOR = new e9();
    public final int b;
    public final String c;
    public final long d;
    public final Long e;
    public final String f;
    public final String g;
    public final Double h;

    zzkg(int i, String str, long j, Long l, Float f2, String str2, String str3, Double d2) {
        this.b = i;
        this.c = str;
        this.d = j;
        this.e = l;
        if (i == 1) {
            this.h = f2 != null ? Double.valueOf(f2.doubleValue()) : null;
        } else {
            this.h = d2;
        }
        this.f = str2;
        this.g = str3;
    }

    public final Object o() {
        Long l = this.e;
        if (l != null) {
            return l;
        }
        Double d2 = this.h;
        if (d2 != null) {
            return d2;
        }
        String str = this.f;
        if (str != null) {
            return str;
        }
        return null;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        e9.a(this, parcel, i);
    }

    zzkg(f9 f9Var) {
        this(f9Var.c, f9Var.d, f9Var.e, f9Var.b);
    }

    zzkg(String str, long j, Object obj, String str2) {
        n.e(str);
        this.b = 2;
        this.c = str;
        this.d = j;
        this.g = str2;
        if (obj == null) {
            this.e = null;
            this.h = null;
            this.f = null;
        } else if (obj instanceof Long) {
            this.e = (Long) obj;
            this.h = null;
            this.f = null;
        } else if (obj instanceof String) {
            this.e = null;
            this.h = null;
            this.f = (String) obj;
        } else if (obj instanceof Double) {
            this.e = null;
            this.h = (Double) obj;
            this.f = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
