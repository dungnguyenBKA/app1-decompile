package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzagt extends zzgw implements zzagr {
    zzagt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void cancelUnconfirmedClick() {
        zzb(22, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void destroy() {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getAdvertiser() {
        Parcel zza = zza(7, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getBody() {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getCallToAction() {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final Bundle getExtras() {
        Parcel zza = zza(20, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getHeadline() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List getImages() {
        Parcel zza = zza(3, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(12, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List getMuteThisAdReasons() {
        Parcel zza = zza(23, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getPrice() {
        Parcel zza = zza(10, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final double getStarRating() {
        Parcel zza = zza(8, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getStore() {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzzc getVideoController() {
        Parcel zza = zza(11, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomClickGestureEnabled() {
        Parcel zza = zza(30, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomMuteThisAdEnabled() {
        Parcel zza = zza(24, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void performClick(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void recordCustomClickGesture() {
        zzb(28, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean recordImpression(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(16, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void reportTouchEvent(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(17, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzagm zzagm) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagm);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzyx zzki() {
        Parcel zza = zza(31, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zv zztm() {
        return ic.A(zza(18, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaer zztn() {
        zzaer zzaer;
        Parcel zza = zza(5, zzdo());
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

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaej zzto() {
        zzaej zzaej;
        Parcel zza = zza(14, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaej = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            if (queryLocalInterface instanceof zzaej) {
                zzaej = (zzaej) queryLocalInterface;
            } else {
                zzaej = new zzael(readStrongBinder);
            }
        }
        zza.recycle();
        return zzaej;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zv zztp() {
        return ic.A(zza(19, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zztx() {
        zzb(27, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaem zzty() {
        zzaem zzaem;
        Parcel zza = zza(29, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaem = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            if (queryLocalInterface instanceof zzaem) {
                zzaem = (zzaem) queryLocalInterface;
            } else {
                zzaem = new zzaeo(readStrongBinder);
            }
        }
        zza.recycle();
        return zzaem;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyn zzyn) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyn);
        zzb(25, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyj zzyj) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyj);
        zzb(26, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyw zzyw) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyw);
        zzb(32, zzdo);
    }
}
