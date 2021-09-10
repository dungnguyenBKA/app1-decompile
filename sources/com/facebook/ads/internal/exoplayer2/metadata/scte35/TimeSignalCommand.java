package com.facebook.ads.internal.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.EJ;
import com.facebook.ads.redexgen.X.IM;
import com.facebook.ads.redexgen.X.IY;

public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new EJ();
    public final long A00;
    public final long A01;

    public TimeSignalCommand(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, EJ ej) {
        this(j, j2);
    }

    public static long A00(IM im, long j) {
        long A0F = (long) im.A0F();
        if ((128 & A0F) != 0) {
            return ((((1 & A0F) << 32) | im.A0N()) + j) & 8589934591L;
        }
        return -9223372036854775807L;
    }

    public static TimeSignalCommand A01(IM im, long j, IY iy) {
        long A002 = A00(im, j);
        return new TimeSignalCommand(A002, iy.A08(A002));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
    }
}
