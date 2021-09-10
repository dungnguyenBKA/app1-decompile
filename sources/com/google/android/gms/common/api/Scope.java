package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new c();
    private final int b;
    private final String c;

    Scope(int i, String str) {
        n.f(str, "scopeUri must not be null or empty");
        this.b = i;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.c.equals(((Scope) obj).c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String o() {
        return this.c;
    }

    public final String toString() {
        return this.c;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.r(parcel, 2, this.c, false);
        b.b(parcel, a);
    }

    public Scope(String str) {
        n.f(str, "scopeUri must not be null or empty");
        this.b = 1;
        this.c = str;
    }
}
