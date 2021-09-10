package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;

/* renamed from: com.facebook.ads.redexgen.X.Fj  reason: case insensitive filesystem */
public class C0487Fj implements Parcelable.Creator<TrackGroupArray> {
    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final TrackGroupArray createFromParcel(Parcel parcel) {
        return new TrackGroupArray(parcel);
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final TrackGroupArray[] newArray(int i) {
        return new TrackGroupArray[i];
    }
}
