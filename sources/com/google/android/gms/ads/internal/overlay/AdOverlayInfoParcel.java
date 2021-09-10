package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ads.zzahi;
import com.google.android.gms.internal.ads.zzahk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzckn;
import com.google.android.gms.internal.ads.zzcqr;
import com.google.android.gms.internal.ads.zzdrz;
import com.google.android.gms.internal.ads.zzvc;
import defpackage.zv;

public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzo();
    public final int orientation;
    public final String url;
    public final zzazn zzbpn;
    public final String zzbvs;
    public final zzvc zzchd;
    public final zzahi zzdgz;
    public final zzahk zzdha;
    public final zzckn zzdib;
    public final zzdrz zzdic;
    public final zzbeb zzdjd;
    public final zzd zzdsu;
    public final zzq zzdsv;
    public final String zzdsw;
    public final boolean zzdsx;
    public final String zzdsy;
    public final zzv zzdsz;
    public final int zzdta;
    public final String zzdtb;
    public final zzk zzdtc;
    public final zzcqr zzdtd;
    public final zzbg zzdte;
    public final String zzdtf;

    public AdOverlayInfoParcel(zzbeb zzbeb, zzazn zzazn, zzbg zzbg, zzcqr zzcqr, zzckn zzckn, zzdrz zzdrz, String str, String str2, int i) {
        this.zzdsu = null;
        this.zzchd = null;
        this.zzdsv = null;
        this.zzdjd = zzbeb;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = false;
        this.zzdsy = null;
        this.zzdsz = null;
        this.orientation = i;
        this.zzdta = 5;
        this.url = null;
        this.zzbpn = zzazn;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = str;
        this.zzdtf = str2;
        this.zzdtd = zzcqr;
        this.zzdib = zzckn;
        this.zzdic = zzdrz;
        this.zzdte = zzbg;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzd(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.q(parcel, 2, this.zzdsu, i, false);
        b.j(parcel, 3, aw.Q(this.zzchd).asBinder(), false);
        b.j(parcel, 4, aw.Q(this.zzdsv).asBinder(), false);
        b.j(parcel, 5, aw.Q(this.zzdjd).asBinder(), false);
        b.j(parcel, 6, aw.Q(this.zzdha).asBinder(), false);
        b.r(parcel, 7, this.zzdsw, false);
        b.c(parcel, 8, this.zzdsx);
        b.r(parcel, 9, this.zzdsy, false);
        b.j(parcel, 10, aw.Q(this.zzdsz).asBinder(), false);
        b.k(parcel, 11, this.orientation);
        b.k(parcel, 12, this.zzdta);
        b.r(parcel, 13, this.url, false);
        b.q(parcel, 14, this.zzbpn, i, false);
        b.r(parcel, 16, this.zzdtb, false);
        b.q(parcel, 17, this.zzdtc, i, false);
        b.j(parcel, 18, aw.Q(this.zzdgz).asBinder(), false);
        b.r(parcel, 19, this.zzbvs, false);
        b.j(parcel, 20, aw.Q(this.zzdtd).asBinder(), false);
        b.j(parcel, 21, aw.Q(this.zzdib).asBinder(), false);
        b.j(parcel, 22, aw.Q(this.zzdic).asBinder(), false);
        b.j(parcel, 23, aw.Q(this.zzdte).asBinder(), false);
        b.r(parcel, 24, this.zzdtf, false);
        b.b(parcel, a);
    }

    public AdOverlayInfoParcel(zzvc zzvc, zzq zzq, zzv zzv, zzbeb zzbeb, int i, zzazn zzazn, String str, zzk zzk, String str2, String str3) {
        this.zzdsu = null;
        this.zzchd = null;
        this.zzdsv = zzq;
        this.zzdjd = zzbeb;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = str2;
        this.zzdsx = false;
        this.zzdsy = str3;
        this.zzdsz = null;
        this.orientation = i;
        this.zzdta = 1;
        this.url = null;
        this.zzbpn = zzazn;
        this.zzdtb = str;
        this.zzdtc = zzk;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvc, zzq zzq, zzv zzv, zzbeb zzbeb, boolean z, int i, zzazn zzazn) {
        this.zzdsu = null;
        this.zzchd = zzvc;
        this.zzdsv = zzq;
        this.zzdjd = zzbeb;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = z;
        this.zzdsy = null;
        this.zzdsz = zzv;
        this.orientation = i;
        this.zzdta = 2;
        this.url = null;
        this.zzbpn = zzazn;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvc, zzq zzq, zzahi zzahi, zzahk zzahk, zzv zzv, zzbeb zzbeb, boolean z, int i, String str, zzazn zzazn) {
        this.zzdsu = null;
        this.zzchd = zzvc;
        this.zzdsv = zzq;
        this.zzdjd = zzbeb;
        this.zzdgz = zzahi;
        this.zzdha = zzahk;
        this.zzdsw = null;
        this.zzdsx = z;
        this.zzdsy = null;
        this.zzdsz = zzv;
        this.orientation = i;
        this.zzdta = 3;
        this.url = str;
        this.zzbpn = zzazn;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvc, zzq zzq, zzahi zzahi, zzahk zzahk, zzv zzv, zzbeb zzbeb, boolean z, int i, String str, String str2, zzazn zzazn) {
        this.zzdsu = null;
        this.zzchd = zzvc;
        this.zzdsv = zzq;
        this.zzdjd = zzbeb;
        this.zzdgz = zzahi;
        this.zzdha = zzahk;
        this.zzdsw = str2;
        this.zzdsx = z;
        this.zzdsy = str;
        this.zzdsz = zzv;
        this.orientation = i;
        this.zzdta = 3;
        this.url = null;
        this.zzbpn = zzazn;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzd zzd, zzvc zzvc, zzq zzq, zzv zzv, zzazn zzazn, zzbeb zzbeb) {
        this.zzdsu = zzd;
        this.zzchd = zzvc;
        this.zzdsv = zzq;
        this.zzdjd = zzbeb;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = false;
        this.zzdsy = null;
        this.zzdsz = zzv;
        this.orientation = -1;
        this.zzdta = 4;
        this.url = null;
        this.zzbpn = zzazn;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    AdOverlayInfoParcel(zzd zzd, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzazn zzazn, String str4, zzk zzk, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6) {
        this.zzdsu = zzd;
        this.zzchd = (zzvc) aw.P(zv.a.O(iBinder));
        this.zzdsv = (zzq) aw.P(zv.a.O(iBinder2));
        this.zzdjd = (zzbeb) aw.P(zv.a.O(iBinder3));
        this.zzdgz = (zzahi) aw.P(zv.a.O(iBinder6));
        this.zzdha = (zzahk) aw.P(zv.a.O(iBinder4));
        this.zzdsw = str;
        this.zzdsx = z;
        this.zzdsy = str2;
        this.zzdsz = (zzv) aw.P(zv.a.O(iBinder5));
        this.orientation = i;
        this.zzdta = i2;
        this.url = str3;
        this.zzbpn = zzazn;
        this.zzdtb = str4;
        this.zzdtc = zzk;
        this.zzbvs = str5;
        this.zzdtf = str6;
        this.zzdtd = (zzcqr) aw.P(zv.a.O(iBinder7));
        this.zzdib = (zzckn) aw.P(zv.a.O(iBinder8));
        this.zzdic = (zzdrz) aw.P(zv.a.O(iBinder9));
        this.zzdte = (zzbg) aw.P(zv.a.O(iBinder10));
    }
}
