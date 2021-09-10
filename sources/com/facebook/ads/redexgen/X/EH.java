package com.facebook.ads.redexgen.X;

import android.os.Parcel;

public final class EH {
    public final int A00;
    public final long A01;

    public EH(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public /* synthetic */ EH(int i, long j, EG eg) {
        this(i, j);
    }

    public static EH A00(Parcel parcel) {
        return new EH(parcel.readInt(), parcel.readLong());
    }

    /* access modifiers changed from: private */
    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}
