package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.exoplayer2.trackselection.DefaultTrackSelector$Parameters;

/* renamed from: com.facebook.ads.redexgen.X.Gw  reason: case insensitive filesystem */
public class C0525Gw implements Parcelable.Creator<DefaultTrackSelector$Parameters> {
    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final DefaultTrackSelector$Parameters createFromParcel(Parcel parcel) {
        return new DefaultTrackSelector$Parameters(parcel);
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final DefaultTrackSelector$Parameters[] newArray(int i) {
        return new DefaultTrackSelector$Parameters[i];
    }
}
