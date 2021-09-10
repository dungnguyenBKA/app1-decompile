package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Arrays;
import org.apache.http.cookie.ClientCookie;

public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new k();
    private final String b;
    @Deprecated
    private final int c;
    private final long d;

    public Feature(String str, long j) {
        this.b = str;
        this.d = j;
        this.c = -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            String str = this.b;
            if (((str == null || !str.equals(feature.b)) && (this.b != null || feature.b != null)) || o() != feature.o()) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, Long.valueOf(o())});
    }

    public long o() {
        long j = this.d;
        return j == -1 ? (long) this.c : j;
    }

    public String toString() {
        m.a b2 = m.b(this);
        b2.a("name", this.b);
        b2.a(ClientCookie.VERSION_ATTR, Long.valueOf(o()));
        return b2.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.b, false);
        b.k(parcel, 2, this.c);
        b.n(parcel, 3, o());
        b.b(parcel, a);
    }

    public Feature(String str, int i, long j) {
        this.b = str;
        this.c = i;
        this.d = j;
    }
}
