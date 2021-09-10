package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzy> CREATOR = new zzz();
    public final long zza;
    public final long zzb;
    public final boolean zzc;
    public final String zzd;
    public final String zze;
    public final String zzf;
    public final Bundle zzg;
    public final String zzh;

    public zzy(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.n(parcel, 1, this.zza);
        b.n(parcel, 2, this.zzb);
        b.c(parcel, 3, this.zzc);
        b.r(parcel, 4, this.zzd, false);
        b.r(parcel, 5, this.zze, false);
        b.r(parcel, 6, this.zzf, false);
        b.e(parcel, 7, this.zzg, false);
        b.r(parcel, 8, this.zzh, false);
        b.b(parcel, a);
    }
}
