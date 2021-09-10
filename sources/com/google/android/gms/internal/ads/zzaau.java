package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaau extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaau> CREATOR = new zzaax();
    public final boolean zzadx;
    public final boolean zzady;
    public final boolean zzadz;

    public zzaau(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 2, this.zzadx);
        b.c(parcel, 3, this.zzady);
        b.c(parcel, 4, this.zzadz);
        b.b(parcel, a);
    }

    public zzaau(boolean z, boolean z2, boolean z3) {
        this.zzadx = z;
        this.zzady = z2;
        this.zzadz = z3;
    }
}
