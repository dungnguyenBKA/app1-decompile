package com.facebook.ads.internal.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.EC;
import com.facebook.ads.redexgen.X.IM;

public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new EC();
    public final long A00;
    public final long A01;
    public final byte[] A02;

    public PrivateCommand(long j, byte[] bArr, long j2) {
        this.A01 = j2;
        this.A00 = j;
        this.A02 = bArr;
    }

    public PrivateCommand(Parcel parcel) {
        this.A01 = parcel.readLong();
        this.A00 = parcel.readLong();
        this.A02 = new byte[parcel.readInt()];
        parcel.readByteArray(this.A02);
    }

    public /* synthetic */ PrivateCommand(Parcel parcel, EC ec) {
        this(parcel);
    }

    public static PrivateCommand A00(IM im, int i, long j) {
        long A0N = im.A0N();
        byte[] bArr = new byte[(i - 4)];
        im.A0d(bArr, 0, bArr.length);
        return new PrivateCommand(A0N, bArr, j);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
        parcel.writeInt(this.A02.length);
        parcel.writeByteArray(this.A02);
    }
}
