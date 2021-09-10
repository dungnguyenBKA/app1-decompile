package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzajt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajt> CREATOR = new zzajs();
    public final int versionCode;
    public final int zzbnt;
    public final int zzdiz;
    public final String zzdja;

    public zzajt(zzakf zzakf) {
        this(2, 1, zzakf.zzuh(), zzakf.getMediaAspectRatio());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.zzdiz);
        b.r(parcel, 2, this.zzdja, false);
        b.k(parcel, 3, this.zzbnt);
        b.k(parcel, AdError.NETWORK_ERROR_CODE, this.versionCode);
        b.b(parcel, a);
    }

    public zzajt(int i, int i2, String str, int i3) {
        this.versionCode = i;
        this.zzdiz = i2;
        this.zzdja = str;
        this.zzbnt = i3;
    }
}
