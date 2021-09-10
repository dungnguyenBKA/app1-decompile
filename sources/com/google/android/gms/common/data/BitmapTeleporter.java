package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Objects;

public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();
    private final int b;
    private ParcelFileDescriptor c;
    private final int d;

    BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.b = i;
        this.c = parcelFileDescriptor;
        this.d = i2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        Objects.requireNonNull(this.c);
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i | 1, false);
        b.k(parcel, 3, this.d);
        b.b(parcel, a);
        this.c = null;
    }
}
