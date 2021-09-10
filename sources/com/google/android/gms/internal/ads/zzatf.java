package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzatf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatf> CREATOR = new zzate();
    public final boolean zzdxb;
    public final List<String> zzdxc;

    public zzatf() {
        this(false, Collections.emptyList());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 2, this.zzdxb);
        b.t(parcel, 3, this.zzdxc, false);
        b.b(parcel, a);
    }

    public zzatf(boolean z, List<String> list) {
        this.zzdxb = z;
        this.zzdxc = list;
    }
}
