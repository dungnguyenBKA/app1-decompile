package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzafp extends zzgw implements zzafn {
    zzafp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void destroy() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final List<String> getAvailableAssetNames() {
        Parcel zza = zza(3, zzdo());
        ArrayList<String> createStringArrayList = zza.createStringArrayList();
        zza.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String getCustomTemplateId() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzzc getVideoController() {
        Parcel zza = zza(7, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void performClick(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void recordImpression() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String zzct(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(1, zzdo);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzaer zzcu(String str) {
        zzaer zzaer;
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaer = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof zzaer) {
                zzaer = (zzaer) queryLocalInterface;
            } else {
                zzaer = new zzaet(readStrongBinder);
            }
        }
        zza.recycle();
        return zzaer;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzp(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(10, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zzq(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zv zztm() {
        return ic.A(zza(11, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zv zztr() {
        return ic.A(zza(9, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzts() {
        Parcel zza = zza(12, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zztt() {
        Parcel zza = zza(13, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zztu() {
        zzb(15, zzdo());
    }
}
