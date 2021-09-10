package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Map;

public final class zzait extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzait> CREATOR = new zzais();
    private final String url;
    private final String[] zzdin;
    private final String[] zzdio;

    zzait(String str, String[] strArr, String[] strArr2) {
        this.url = str;
        this.zzdin = strArr;
        this.zzdio = strArr2;
    }

    public static zzait zzh(zzab<?> zzab) {
        Map<String, String> headers = zzab.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzait(zzab.getUrl(), strArr, strArr2);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.url, false);
        b.s(parcel, 2, this.zzdin, false);
        b.s(parcel, 3, this.zzdio, false);
        b.b(parcel, a);
    }
}
