package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.b;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;

public final class Status extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new d();
    public static final Status f = new Status(0, null);
    public static final Status g = new Status(15, null);
    public static final Status h = new Status(16, null);
    private final int b;
    private final int c;
    private final String d;
    private final PendingIntent e;

    static {
        new Status(14, null);
        new Status(8, null);
        new Status(17, null);
        new Status(18, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.b != status.b || this.c != status.c || !m.a(this.d, status.d) || !m.a(this.e, status.e)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), this.d, this.e});
    }

    public final String toString() {
        m.a b2 = m.b(this);
        String str = this.d;
        if (str == null) {
            str = b.Y(this.c);
        }
        b2.a("statusCode", str);
        b2.a("resolution", this.e);
        return b2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.k(parcel, 1, this.c);
        com.google.android.gms.common.internal.safeparcel.b.r(parcel, 2, this.d, false);
        com.google.android.gms.common.internal.safeparcel.b.q(parcel, 3, this.e, i, false);
        com.google.android.gms.common.internal.safeparcel.b.k(parcel, AdError.NETWORK_ERROR_CODE, this.b);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a);
    }

    public Status(int i, String str) {
        this.b = 1;
        this.c = i;
        this.d = str;
        this.e = null;
    }
}
