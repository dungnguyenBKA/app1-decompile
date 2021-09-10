package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.List;

public final class zzth extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzth> CREATOR = new zztg();
    public final String url;
    private final long zzbvl;
    private final String zzbvm;
    private final String zzbvn;
    private final String zzbvo;
    private final Bundle zzbvp;
    public final boolean zzbvq;
    public long zzbvr;
    public String zzbvs;
    public int zzbvt;

    zzth(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.url = str;
        this.zzbvl = j;
        this.zzbvm = str2 == null ? "" : str2;
        this.zzbvn = str3 == null ? "" : str3;
        this.zzbvo = str4 == null ? "" : str4;
        this.zzbvp = bundle == null ? new Bundle() : bundle;
        this.zzbvq = z;
        this.zzbvr = j2;
        this.zzbvs = str5;
        this.zzbvt = i;
    }

    public static zzth zzbs(String str) {
        return zzd(Uri.parse(str));
    }

    public static zzth zzd(Uri uri) {
        long j;
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                zzazk.zzex(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(ReportDBAdapter.ReportColumns.COLUMN_URL);
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            if (queryParameter2 == null) {
                j = 0;
            } else {
                j = Long.parseLong(queryParameter2);
            }
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzth(queryParameter, j, host, str, str2, bundle, equals, 0, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            zzazk.zzd("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.url, false);
        b.n(parcel, 3, this.zzbvl);
        b.r(parcel, 4, this.zzbvm, false);
        b.r(parcel, 5, this.zzbvn, false);
        b.r(parcel, 6, this.zzbvo, false);
        b.e(parcel, 7, this.zzbvp, false);
        b.c(parcel, 8, this.zzbvq);
        b.n(parcel, 9, this.zzbvr);
        b.r(parcel, 10, this.zzbvs, false);
        b.k(parcel, 11, this.zzbvt);
        b.b(parcel, a);
    }
}
