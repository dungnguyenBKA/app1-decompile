package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzafl extends zzgw implements zzafj {
    zzafl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void destroy() {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getAdvertiser() {
        Parcel zza = zza(8, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getBody() {
        Parcel zza = zza(5, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getCallToAction() {
        Parcel zza = zza(7, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final Bundle getExtras() {
        Parcel zza = zza(9, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getHeadline() {
        Parcel zza = zza(3, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final List getImages() {
        Parcel zza = zza(4, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(17, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzzc getVideoController() {
        Parcel zza = zza(11, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void performClick(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final boolean recordImpression(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(13, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void reportTouchEvent(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zv zztm() {
        return ic.A(zza(2, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaej zzto() {
        zzaej zzaej;
        Parcel zza = zza(15, zzdo());
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

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zv zztp() {
        return ic.A(zza(16, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaer zztq() {
        zzaer zzaer;
        Parcel zza = zza(6, zzdo());
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
}
