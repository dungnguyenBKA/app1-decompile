package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzdpf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdpf> CREATOR = new zzdpj();
    @Nullable
    public final Context context;
    private final zzdpi[] zzhni;
    private final int[] zzhnj;
    private final int[] zzhnk;
    private final int zzhnl;
    public final zzdpi zzhnm;
    public final int zzhnn;
    public final int zzhno;
    public final int zzhnp;
    public final String zzhnq;
    private final int zzhnr;
    public final int zzhns;
    private final int zzhnt;
    private final int zzhnu;

    private zzdpf(@Nullable Context context2, zzdpi zzdpi, int i, int i2, int i3, String str, String str2, String str3) {
        int i4;
        this.zzhni = zzdpi.values();
        this.zzhnj = zzdph.zzawg();
        this.zzhnk = zzdpk.zzawh();
        this.context = context2;
        this.zzhnl = zzdpi.ordinal();
        this.zzhnm = zzdpi;
        this.zzhnn = i;
        this.zzhno = i2;
        this.zzhnp = i3;
        this.zzhnq = str;
        if ("oldest".equals(str2)) {
            i4 = zzdph.zzhnx;
        } else if ("lru".equals(str2) || !"lfu".equals(str2)) {
            i4 = zzdph.zzhny;
        } else {
            i4 = zzdph.zzhnz;
        }
        this.zzhns = i4;
        this.zzhnr = i4 - 1;
        "onAdClosed".equals(str3);
        int i5 = zzdpk.zzhof;
        this.zzhnu = i5;
        this.zzhnt = i5 - 1;
    }

    public static zzdpf zza(zzdpi zzdpi, Context context2) {
        if (zzdpi == zzdpi.Rewarded) {
            return new zzdpf(context2, zzdpi, ((Integer) zzwr.zzqr().zzd(zzabp.zzcye)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcyk)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcym)).intValue(), (String) zzwr.zzqr().zzd(zzabp.zzcyo), (String) zzwr.zzqr().zzd(zzabp.zzcyg), (String) zzwr.zzqr().zzd(zzabp.zzcyi));
        } else if (zzdpi == zzdpi.Interstitial) {
            return new zzdpf(context2, zzdpi, ((Integer) zzwr.zzqr().zzd(zzabp.zzcyf)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcyl)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcyn)).intValue(), (String) zzwr.zzqr().zzd(zzabp.zzcyp), (String) zzwr.zzqr().zzd(zzabp.zzcyh), (String) zzwr.zzqr().zzd(zzabp.zzcyj));
        } else if (zzdpi != zzdpi.AppOpen) {
            return null;
        } else {
            return new zzdpf(context2, zzdpi, ((Integer) zzwr.zzqr().zzd(zzabp.zzcys)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcyu)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabp.zzcyv)).intValue(), (String) zzwr.zzqr().zzd(zzabp.zzcyq), (String) zzwr.zzqr().zzd(zzabp.zzcyr), (String) zzwr.zzqr().zzd(zzabp.zzcyt));
        }
    }

    public static boolean zzawe() {
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyd)).booleanValue();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.zzhnl);
        b.k(parcel, 2, this.zzhnn);
        b.k(parcel, 3, this.zzhno);
        b.k(parcel, 4, this.zzhnp);
        b.r(parcel, 5, this.zzhnq, false);
        b.k(parcel, 6, this.zzhnr);
        b.k(parcel, 7, this.zzhnt);
        b.b(parcel, a);
    }

    public zzdpf(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        zzdpi[] values = zzdpi.values();
        this.zzhni = values;
        int[] zzawg = zzdph.zzawg();
        this.zzhnj = zzawg;
        int[] zzawh = zzdpk.zzawh();
        this.zzhnk = zzawh;
        this.context = null;
        this.zzhnl = i;
        this.zzhnm = values[i];
        this.zzhnn = i2;
        this.zzhno = i3;
        this.zzhnp = i4;
        this.zzhnq = str;
        this.zzhnr = i5;
        this.zzhns = zzawg[i5];
        this.zzhnt = i6;
        this.zzhnu = zzawh[i6];
    }
}
