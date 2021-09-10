package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Arrays;

public final class zzduw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduw> CREATOR = new zzduv();
    public final int status;
    private final int versionCode;
    public final byte[] zzhun;

    zzduw(int i, byte[] bArr, int i2) {
        byte[] bArr2;
        this.versionCode = i;
        if (bArr == null) {
            bArr2 = null;
        } else {
            bArr2 = Arrays.copyOf(bArr, bArr.length);
        }
        this.zzhun = bArr2;
        this.status = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.f(parcel, 2, this.zzhun, false);
        b.k(parcel, 3, this.status);
        b.b(parcel, a);
    }

    public zzduw(byte[] bArr, int i) {
        this(1, null, 1);
    }
}
