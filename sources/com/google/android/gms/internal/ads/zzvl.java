package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class zzvl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvl> CREATOR = new zzvn();
    public final Bundle extras;
    public final int versionCode;
    public final int zzado;
    public final int zzadp;
    public final String zzadq;
    public final boolean zzbni;
    @Deprecated
    public final long zzchn;
    @Deprecated
    public final int zzcho;
    public final List<String> zzchp;
    public final boolean zzchq;
    public final String zzchr;
    public final zzaaq zzchs;
    public final String zzcht;
    public final Bundle zzchu;
    public final Bundle zzchv;
    public final List<String> zzchw;
    public final String zzchx;
    public final String zzchy;
    @Deprecated
    public final boolean zzchz;
    public final zzve zzcia;
    public final List<String> zzcib;
    public final int zzcic;
    public final Location zznb;

    public zzvl(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzaaq zzaaq, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzve zzve, int i4, String str5, List<String> list3, int i5) {
        this.versionCode = i;
        this.zzchn = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzcho = i2;
        this.zzchp = list;
        this.zzchq = z;
        this.zzado = i3;
        this.zzbni = z2;
        this.zzchr = str;
        this.zzchs = zzaaq;
        this.zznb = location;
        this.zzcht = str2;
        this.zzchu = bundle2 == null ? new Bundle() : bundle2;
        this.zzchv = bundle3;
        this.zzchw = list2;
        this.zzchx = str3;
        this.zzchy = str4;
        this.zzchz = z3;
        this.zzcia = zzve;
        this.zzadp = i4;
        this.zzadq = str5;
        this.zzcib = list3 == null ? new ArrayList<>() : list3;
        this.zzcic = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvl)) {
            return false;
        }
        zzvl zzvl = (zzvl) obj;
        if (this.versionCode != zzvl.versionCode || this.zzchn != zzvl.zzchn || !m.a(this.extras, zzvl.extras) || this.zzcho != zzvl.zzcho || !m.a(this.zzchp, zzvl.zzchp) || this.zzchq != zzvl.zzchq || this.zzado != zzvl.zzado || this.zzbni != zzvl.zzbni || !m.a(this.zzchr, zzvl.zzchr) || !m.a(this.zzchs, zzvl.zzchs) || !m.a(this.zznb, zzvl.zznb) || !m.a(this.zzcht, zzvl.zzcht) || !m.a(this.zzchu, zzvl.zzchu) || !m.a(this.zzchv, zzvl.zzchv) || !m.a(this.zzchw, zzvl.zzchw) || !m.a(this.zzchx, zzvl.zzchx) || !m.a(this.zzchy, zzvl.zzchy) || this.zzchz != zzvl.zzchz || this.zzadp != zzvl.zzadp || !m.a(this.zzadq, zzvl.zzadq) || !m.a(this.zzcib, zzvl.zzcib) || this.zzcic != zzvl.zzcic) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.versionCode), Long.valueOf(this.zzchn), this.extras, Integer.valueOf(this.zzcho), this.zzchp, Boolean.valueOf(this.zzchq), Integer.valueOf(this.zzado), Boolean.valueOf(this.zzbni), this.zzchr, this.zzchs, this.zznb, this.zzcht, this.zzchu, this.zzchv, this.zzchw, this.zzchx, this.zzchy, Boolean.valueOf(this.zzchz), Integer.valueOf(this.zzadp), this.zzadq, this.zzcib, Integer.valueOf(this.zzcic)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.n(parcel, 2, this.zzchn);
        b.e(parcel, 3, this.extras, false);
        b.k(parcel, 4, this.zzcho);
        b.t(parcel, 5, this.zzchp, false);
        b.c(parcel, 6, this.zzchq);
        b.k(parcel, 7, this.zzado);
        b.c(parcel, 8, this.zzbni);
        b.r(parcel, 9, this.zzchr, false);
        b.q(parcel, 10, this.zzchs, i, false);
        b.q(parcel, 11, this.zznb, i, false);
        b.r(parcel, 12, this.zzcht, false);
        b.e(parcel, 13, this.zzchu, false);
        b.e(parcel, 14, this.zzchv, false);
        b.t(parcel, 15, this.zzchw, false);
        b.r(parcel, 16, this.zzchx, false);
        b.r(parcel, 17, this.zzchy, false);
        b.c(parcel, 18, this.zzchz);
        b.q(parcel, 19, this.zzcia, i, false);
        b.k(parcel, 20, this.zzadp);
        b.r(parcel, 21, this.zzadq, false);
        b.t(parcel, 22, this.zzcib, false);
        b.k(parcel, 23, this.zzcic);
        b.b(parcel, a);
    }
}
