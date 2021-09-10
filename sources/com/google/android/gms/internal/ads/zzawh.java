package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzawh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawh> CREATOR = new zzawg();
    public final String zzdzh;
    public final String zzdzi;

    public zzawh(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzdzh, false);
        b.r(parcel, 2, this.zzdzi, false);
        b.b(parcel, a);
    }

    public zzawh(String str, String str2) {
        this.zzdzh = str;
        this.zzdzi = str2;
    }
}
