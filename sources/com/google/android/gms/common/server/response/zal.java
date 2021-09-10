package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;

public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new d();
    private final int b;
    final String c;
    final ArrayList<zam> d;

    zal(int i, String str, ArrayList<zam> arrayList) {
        this.b = i;
        this.c = str;
        this.d = arrayList;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.r(parcel, 2, this.c, false);
        b.v(parcel, 3, this.d, false);
        b.b(parcel, a);
    }

    zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.b = 1;
        this.c = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, map.get(str2)));
            }
        }
        this.d = arrayList;
    }
}
