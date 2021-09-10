package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdwt;
import com.google.android.gms.internal.ads.zzvg;

public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzas();
    public final int errorCode;
    public final String zzacp;

    zzaq(String str, int i) {
        this.zzacp = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaq zzc(Throwable th) {
        String str;
        zzvg zzh = zzdok.zzh(th);
        if (zzdwt.zzar(th.getMessage())) {
            str = zzh.zzchg;
        } else {
            str = th.getMessage();
        }
        return new zzaq(str, zzh.errorCode);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzacp, false);
        b.k(parcel, 2, this.errorCode);
        b.b(parcel, a);
    }
}
