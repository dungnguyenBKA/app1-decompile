package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Iterator;

public final class zzaq extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaq> CREATOR = new q();
    private final Bundle b;

    zzaq(Bundle bundle) {
        this.b = bundle;
    }

    /* access modifiers changed from: package-private */
    public final Long i0() {
        return Long.valueOf(this.b.getLong("value"));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new p(this);
    }

    /* access modifiers changed from: package-private */
    public final Double j0() {
        return Double.valueOf(this.b.getDouble("value"));
    }

    /* access modifiers changed from: package-private */
    public final String k0(String str) {
        return this.b.getString(str);
    }

    public final int l0() {
        return this.b.size();
    }

    public final Bundle m0() {
        return new Bundle(this.b);
    }

    /* access modifiers changed from: package-private */
    public final Object o(String str) {
        return this.b.get(str);
    }

    public final String toString() {
        return this.b.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.e(parcel, 2, m0(), false);
        b.b(parcel, a);
    }
}
