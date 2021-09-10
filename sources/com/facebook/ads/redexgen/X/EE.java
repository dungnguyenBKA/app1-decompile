package com.facebook.ads.redexgen.X;

import android.os.Parcel;

public final class EE {
    public final int A00;
    public final long A01;
    public final long A02;

    public EE(int i, long j, long j2) {
        this.A00 = i;
        this.A02 = j;
        this.A01 = j2;
    }

    public /* synthetic */ EE(int i, long j, long j2, ED ed) {
        this(i, j, j2);
    }

    public static EE A00(Parcel parcel) {
        return new EE(parcel.readInt(), parcel.readLong(), parcel.readLong());
    }

    public final void A01(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A02);
        parcel.writeLong(this.A01);
    }
}
