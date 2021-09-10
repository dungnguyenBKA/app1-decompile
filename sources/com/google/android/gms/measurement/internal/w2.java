package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzc;
import java.util.ArrayList;
import java.util.List;

public final class w2 extends zza implements y2 {
    w2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void A(zzkg zzkg, zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzkg);
        zzc.zzd(zza, zzp);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void H(zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzp);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void M(zzas zzas, zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzas);
        zzc.zzd(zza, zzp);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzkg> N(String str, String str2, String str3, boolean z) {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc.zzb(zza, z);
        Parcel zzz = zzz(15, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzkg.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzaa> a(String str, String str2, zzp zzp) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, zzp);
        Parcel zzz = zzz(16, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzaa.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void b(zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzp);
        zzc(20, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final String e(zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzp);
        Parcel zzz = zzz(11, zza);
        String readString = zzz.readString();
        zzz.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void l(zzaa zzaa, zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzaa);
        zzc.zzd(zza, zzp);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void m(long j, String str, String str2, String str3) {
        Parcel zza = zza();
        zza.writeLong(j);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzkg> o(String str, String str2, boolean z, zzp zzp) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzb(zza, z);
        zzc.zzd(zza, zzp);
        Parcel zzz = zzz(14, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzkg.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final List<zzaa> p(String str, String str2, String str3) {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        Parcel zzz = zzz(17, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzaa.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void s(zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzp);
        zzc(18, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void t(Bundle bundle, zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc.zzd(zza, zzp);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final byte[] v(zzas zzas, String str) {
        Parcel zza = zza();
        zzc.zzd(zza, zzas);
        zza.writeString(str);
        Parcel zzz = zzz(9, zza);
        byte[] createByteArray = zzz.createByteArray();
        zzz.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.y2
    public final void y(zzp zzp) {
        Parcel zza = zza();
        zzc.zzd(zza, zzp);
        zzc(6, zza);
    }
}
