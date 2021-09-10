package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new b();
    private final int b;
    private final HashMap<String, Integer> c;
    private final SparseArray<String> d;

    StringToIntConverter(int i, ArrayList<zaa> arrayList) {
        this.b = i;
        this.c = new HashMap<>();
        this.d = new SparseArray<>();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaa2 = arrayList.get(i2);
            i2++;
            zaa zaa3 = zaa2;
            String str = zaa3.c;
            int i3 = zaa3.d;
            this.c.put(str, Integer.valueOf(i3));
            this.d.put(i3, str);
        }
    }

    public final /* synthetic */ Object o(Object obj) {
        String str = this.d.get(((Integer) obj).intValue());
        return (str != null || !this.c.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        ArrayList arrayList = new ArrayList();
        for (String str : this.c.keySet()) {
            arrayList.add(new zaa(str, this.c.get(str).intValue()));
        }
        b.v(parcel, 2, arrayList, false);
        b.b(parcel, a);
    }

    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new c();
        private final int b;
        final String c;
        final int d;

        zaa(int i, String str, int i2) {
            this.b = i;
            this.c = str;
            this.d = i2;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            int a = b.a(parcel);
            b.k(parcel, 1, this.b);
            b.r(parcel, 2, this.c, false);
            b.k(parcel, 3, this.d);
            b.b(parcel, a);
        }

        zaa(String str, int i) {
            this.b = 1;
            this.c = str;
            this.d = i;
        }
    }

    public StringToIntConverter() {
        this.b = 1;
        this.c = new HashMap<>();
        this.d = new SparseArray<>();
    }
}
