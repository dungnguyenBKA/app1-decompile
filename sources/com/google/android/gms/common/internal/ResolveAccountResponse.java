package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new w();
    private final int b;
    private IBinder c;
    private ConnectionResult d;
    private boolean e;
    private boolean f;

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.b = i;
        this.c = iBinder;
        this.d = connectionResult;
        this.e = z;
        this.f = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.d.equals(resolveAccountResponse.d) && o().equals(resolveAccountResponse.o());
    }

    public h o() {
        return h.a.O(this.c);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.j(parcel, 2, this.c, false);
        b.q(parcel, 3, this.d, i, false);
        b.c(parcel, 4, this.e);
        b.c(parcel, 5, this.f);
        b.b(parcel, a);
    }
}
