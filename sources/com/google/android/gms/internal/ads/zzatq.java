package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzatq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatq> CREATOR = new zzatt();
    private final ApplicationInfo applicationInfo;
    public final String packageName;
    public final zzazn zzdtx;
    public final PackageInfo zzdue;
    public final List<String> zzduo;
    public final String zzdux;
    public final Bundle zzdxi;
    public final String zzdxj;
    public zzdpf zzdxk;
    public String zzdxl;

    public zzatq(Bundle bundle, zzazn zzazn, ApplicationInfo applicationInfo2, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, zzdpf zzdpf, String str4) {
        this.zzdxi = bundle;
        this.zzdtx = zzazn;
        this.packageName = str;
        this.applicationInfo = applicationInfo2;
        this.zzduo = list;
        this.zzdue = packageInfo;
        this.zzdux = str2;
        this.zzdxj = str3;
        this.zzdxk = zzdpf;
        this.zzdxl = str4;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.e(parcel, 1, this.zzdxi, false);
        b.q(parcel, 2, this.zzdtx, i, false);
        b.q(parcel, 3, this.applicationInfo, i, false);
        b.r(parcel, 4, this.packageName, false);
        b.t(parcel, 5, this.zzduo, false);
        b.q(parcel, 6, this.zzdue, i, false);
        b.r(parcel, 7, this.zzdux, false);
        b.r(parcel, 9, this.zzdxj, false);
        b.q(parcel, 10, this.zzdxk, i, false);
        b.r(parcel, 11, this.zzdxl, false);
        b.b(parcel, a);
    }
}
