package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzvg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvg> CREATOR = new zzvf();
    public final int errorCode;
    public final String zzchg;
    public final String zzchh;
    public zzvg zzchi;
    public IBinder zzchj;

    public zzvg(int i, String str, String str2, zzvg zzvg, IBinder iBinder) {
        this.errorCode = i;
        this.zzchg = str;
        this.zzchh = str2;
        this.zzchi = zzvg;
        this.zzchj = iBinder;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.errorCode);
        b.r(parcel, 2, this.zzchg, false);
        b.r(parcel, 3, this.zzchh, false);
        b.q(parcel, 4, this.zzchi, i, false);
        b.j(parcel, 5, this.zzchj, false);
        b.b(parcel, a);
    }

    public final AdError zzqb() {
        zzvg zzvg = this.zzchi;
        return new AdError(this.errorCode, this.zzchg, this.zzchh, zzvg == null ? null : new AdError(zzvg.errorCode, zzvg.zzchg, zzvg.zzchh));
    }

    public final LoadAdError zzqc() {
        zzvg zzvg = this.zzchi;
        zzyx zzyx = null;
        AdError adError = zzvg == null ? null : new AdError(zzvg.errorCode, zzvg.zzchg, zzvg.zzchh);
        int i = this.errorCode;
        String str = this.zzchg;
        String str2 = this.zzchh;
        IBinder iBinder = this.zzchj;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            if (queryLocalInterface instanceof zzyx) {
                zzyx = (zzyx) queryLocalInterface;
            } else {
                zzyx = new zzyz(iBinder);
            }
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zza(zzyx));
    }
}
