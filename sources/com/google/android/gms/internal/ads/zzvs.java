package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class zzvs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvs> CREATOR = new zzvr();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzacy;
    public final boolean zzbrr;
    public final boolean zzcig;
    public final zzvs[] zzcih;
    public final boolean zzcii;
    public boolean zzcij;
    public boolean zzcik;
    private boolean zzcil;
    public boolean zzcim;
    public boolean zzcin;

    public zzvs() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (((float) zzd(displayMetrics)) * displayMetrics.density);
    }

    private static int zzd(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static zzvs zzqe() {
        return new zzvs("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false);
    }

    public static zzvs zzqf() {
        return new zzvs("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public static zzvs zzqg() {
        return new zzvs("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false);
    }

    public static zzvs zzqh() {
        return new zzvs("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.zzacy, false);
        b.k(parcel, 3, this.height);
        b.k(parcel, 4, this.heightPixels);
        b.c(parcel, 5, this.zzcig);
        b.k(parcel, 6, this.width);
        b.k(parcel, 7, this.widthPixels);
        b.u(parcel, 8, this.zzcih, i, false);
        b.c(parcel, 9, this.zzbrr);
        b.c(parcel, 10, this.zzcii);
        b.c(parcel, 11, this.zzcij);
        b.c(parcel, 12, this.zzcik);
        b.c(parcel, 13, this.zzcil);
        b.c(parcel, 14, this.zzcim);
        b.c(parcel, 15, this.zzcin);
        b.b(parcel, a);
    }

    public final AdSize zzqi() {
        return zza.zza(this.width, this.height, this.zzacy);
    }

    public zzvs(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x009d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public zzvs(android.content.Context r14, com.google.android.gms.ads.AdSize[] r15) {
        /*
        // Method dump skipped, instructions count: 305
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvs.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    zzvs(String str, int i, int i2, boolean z, int i3, int i4, zzvs[] zzvsArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.zzacy = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzcig = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzcih = zzvsArr;
        this.zzbrr = z2;
        this.zzcii = z3;
        this.zzcij = z4;
        this.zzcik = z5;
        this.zzcil = z6;
        this.zzcim = z7;
        this.zzcin = z8;
    }
}
