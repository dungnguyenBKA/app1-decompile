package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroup;

/* renamed from: com.facebook.ads.redexgen.X.Fh  reason: case insensitive filesystem */
public class C0486Fh implements Parcelable.Creator<TrackGroup> {
    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final TrackGroup createFromParcel(Parcel parcel) {
        return new TrackGroup(parcel);
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final TrackGroup[] newArray(int i) {
        return new TrackGroup[i];
    }
}
