package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Arrays;
import java.util.Locale;

public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new a();
    private final int b;
    private final Uri c;
    private final int d;
    private final int e;

    WebImage(int i, Uri uri, int i2, int i3) {
        this.b = i;
        this.c = uri;
        this.d = i2;
        this.e = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            return m.a(this.c, webImage.c) && this.d == webImage.d && this.e == webImage.e;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.c, Integer.valueOf(this.d), Integer.valueOf(this.e)});
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.d), Integer.valueOf(this.e), this.c.toString());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i, false);
        b.k(parcel, 3, this.d);
        b.k(parcel, 4, this.e);
        b.b(parcel, a);
    }
}
