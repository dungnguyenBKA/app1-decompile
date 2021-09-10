package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class zzatt implements Parcelable.Creator<zzatq> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzatq createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Bundle bundle = null;
        zzazn zzazn = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzdpf zzdpf = null;
        String str4 = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    bundle = a.c(parcel, readInt);
                    break;
                case 2:
                    zzazn = (zzazn) a.f(parcel, readInt, zzazn.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) a.f(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = a.g(parcel, readInt);
                    break;
                case 5:
                    arrayList = a.i(parcel, readInt);
                    break;
                case 6:
                    packageInfo = (PackageInfo) a.f(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = a.g(parcel, readInt);
                    break;
                case 8:
                default:
                    a.y(parcel, readInt);
                    break;
                case 9:
                    str3 = a.g(parcel, readInt);
                    break;
                case 10:
                    zzdpf = (zzdpf) a.f(parcel, readInt, zzdpf.CREATOR);
                    break;
                case 11:
                    str4 = a.g(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzatq(bundle, zzazn, applicationInfo, str, arrayList, packageInfo, str2, str3, zzdpf, str4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatq[] newArray(int i) {
        return new zzatq[i];
    }
}
