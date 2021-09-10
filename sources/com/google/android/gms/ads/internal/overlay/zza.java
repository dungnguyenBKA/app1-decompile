package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zza implements Parcelable.Creator<zzd> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzd createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Intent intent = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    str2 = a.g(parcel, readInt);
                    break;
                case 4:
                    str3 = a.g(parcel, readInt);
                    break;
                case 5:
                    str4 = a.g(parcel, readInt);
                    break;
                case 6:
                    str5 = a.g(parcel, readInt);
                    break;
                case 7:
                    str6 = a.g(parcel, readInt);
                    break;
                case 8:
                    str7 = a.g(parcel, readInt);
                    break;
                case 9:
                    intent = (Intent) a.f(parcel, readInt, Intent.CREATOR);
                    break;
                case 10:
                    iBinder = a.s(parcel, readInt);
                    break;
                case 11:
                    z2 = a.m(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzd(str, str2, str3, str4, str5, str6, str7, intent, iBinder, z2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzd[] newArray(int i) {
        return new zzd[i];
    }
}
