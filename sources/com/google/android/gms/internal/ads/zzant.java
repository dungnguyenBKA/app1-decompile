package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzant extends zzgw implements zzanr {
    zzant(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getBody() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getCallToAction() {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final Bundle getExtras() {
        Parcel zza = zza(15, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getHeadline() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final List getImages() {
        Parcel zza = zza(3, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideClickHandling() {
        Parcel zza = zza(14, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideImpressionRecording() {
        Parcel zza = zza(13, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getPrice() {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final double getStarRating() {
        Parcel zza = zza(7, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getStore() {
        Parcel zza = zza(8, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzzc getVideoController() {
        Parcel zza = zza(17, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void recordImpression() {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzc(zv zvVar, zv zvVar2, zv zvVar3) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzgx.zza(zzdo, zvVar3);
        zzb(22, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaer zztn() {
        Parcel zza = zza(5, zzdo());
        zzaer zzo = zzaeq.zzo(zza.readStrongBinder());
        zza.recycle();
        return zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaej zzto() {
        Parcel zza = zza(19, zzdo());
        zzaej zzm = zzaei.zzm(zza.readStrongBinder());
        zza.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zztp() {
        return ic.A(zza(21, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzu(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzv(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zzvg() {
        return ic.A(zza(18, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zzvh() {
        return ic.A(zza(20, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzw(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(16, zzdo);
    }
}
