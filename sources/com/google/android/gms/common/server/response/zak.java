package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new c();
    private final int b;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> c;
    private final String d;

    zak(int i, ArrayList<zal> arrayList, String str) {
        this.b = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zal = arrayList.get(i2);
            String str2 = zal.c;
            HashMap hashMap2 = new HashMap();
            int size2 = zal.d.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zam = zal.d.get(i3);
                hashMap2.put(zam.c, zam.d);
            }
            hashMap.put(str2, hashMap2);
        }
        this.c = hashMap;
        Objects.requireNonNull(str, "null reference");
        this.d = str;
        for (String str3 : hashMap.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.c.get(str3);
            for (String str4 : map.keySet()) {
                map.get(str4).j0(this);
            }
        }
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> i0(String str) {
        return this.c.get(str);
    }

    public final String o() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.c.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.c.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        ArrayList arrayList = new ArrayList();
        for (String str : this.c.keySet()) {
            arrayList.add(new zal(str, this.c.get(str)));
        }
        b.v(parcel, 2, arrayList, false);
        b.r(parcel, 3, this.d, false);
        b.b(parcel, a);
    }
}
