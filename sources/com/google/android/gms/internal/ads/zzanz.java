package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzanz extends zzgw implements zzanx {
    zzanz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getAdvertiser() {
        Parcel zza = zza(7, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getBody() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getCallToAction() {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final Bundle getExtras() {
        Parcel zza = zza(16, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getHeadline() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final List getImages() {
        Parcel zza = zza(3, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getMediaContentAspectRatio() {
        Parcel zza = zza(23, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final boolean getOverrideClickHandling() {
        Parcel zza = zza(18, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final boolean getOverrideImpressionRecording() {
        Parcel zza = zza(17, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getPrice() {
        Parcel zza = zza(10, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final double getStarRating() {
        Parcel zza = zza(8, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getStore() {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzzc getVideoController() {
        Parcel zza = zza(11, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getVideoCurrentTime() {
        Parcel zza = zza(25, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getVideoDuration() {
        Parcel zza = zza(24, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void recordImpression() {
        zzb(19, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzc(zv zvVar, zv zvVar2, zv zvVar3) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzgx.zza(zzdo, zvVar3);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzaer zztn() {
        Parcel zza = zza(5, zzdo());
        zzaer zzo = zzaeq.zzo(zza.readStrongBinder());
        zza.recycle();
        return zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzaej zzto() {
        Parcel zza = zza(12, zzdo());
        zzaej zzm = zzaei.zzm(zza.readStrongBinder());
        zza.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zztp() {
        return ic.A(zza(15, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzu(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(20, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zzvg() {
        return ic.A(zza(13, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zzvh() {
        return ic.A(zza(14, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzw(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(22, zzdo);
    }
}
