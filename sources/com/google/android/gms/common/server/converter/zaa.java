package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();
    private final int b;
    private final StringToIntConverter c;

    zaa(int i, StringToIntConverter stringToIntConverter) {
        this.b = i;
        this.c = stringToIntConverter;
    }

    public static zaa o(FastJsonResponse.a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final FastJsonResponse.a<?, ?> i0() {
        StringToIntConverter stringToIntConverter = this.c;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i, false);
        b.b(parcel, a);
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.b = 1;
        this.c = stringToIntConverter;
    }
}
