package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride;

/* renamed from: com.facebook.ads.redexgen.X.Gz  reason: case insensitive filesystem */
public class C0527Gz implements Parcelable.Creator<DefaultTrackSelector$SelectionOverride> {
    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final DefaultTrackSelector$SelectionOverride createFromParcel(Parcel parcel) {
        return new DefaultTrackSelector$SelectionOverride(parcel);
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final DefaultTrackSelector$SelectionOverride[] newArray(int i) {
        return new DefaultTrackSelector$SelectionOverride[i];
    }
}
