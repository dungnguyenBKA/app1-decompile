package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import defpackage.zv;

public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zza();
    private final String b;
    private final String c;
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final zzt zzdif;
    public final String zzdsd;
    public final String zzdse;
    public final boolean zzdsg;

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzt zzt) {
        this(str, str2, str3, str4, str5, str6, str7, null, aw.Q(zzt).asBinder(), false);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.b, false);
        b.r(parcel, 3, this.url, false);
        b.r(parcel, 4, this.mimeType, false);
        b.r(parcel, 5, this.packageName, false);
        b.r(parcel, 6, this.zzdsd, false);
        b.r(parcel, 7, this.zzdse, false);
        b.r(parcel, 8, this.c, false);
        b.q(parcel, 9, this.intent, i, false);
        b.j(parcel, 10, aw.Q(this.zzdif).asBinder(), false);
        b.c(parcel, 11, this.zzdsg);
        b.b(parcel, a);
    }

    public zzd(Intent intent2, zzt zzt) {
        this(null, null, null, null, null, null, null, intent2, aw.Q(zzt).asBinder(), false);
    }

    public zzd(String str, zzt zzt, boolean z) {
        this(null, str, null, null, null, null, null, null, aw.Q(zzt).asBinder(), true);
    }

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent2, IBinder iBinder, boolean z) {
        this.b = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzdsd = str5;
        this.zzdse = str6;
        this.c = str7;
        this.intent = intent2;
        this.zzdif = (zzt) aw.P(zv.a.O(iBinder));
        this.zzdsg = z;
    }
}
