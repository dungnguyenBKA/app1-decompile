package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import java.util.List;

public abstract class zzafi extends zzgy implements zzafj {
    public zzafi() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                zv zztm = zztm();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztm);
                return true;
            case 3:
                String headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 4:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 5:
                String body = getBody();
                parcel2.writeNoException();
                parcel2.writeString(body);
                return true;
            case 6:
                zzaer zztq = zztq();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztq);
                return true;
            case 7:
                String callToAction = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(callToAction);
                return true;
            case 8:
                String advertiser = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(advertiser);
                return true;
            case 9:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, extras);
                return true;
            case 10:
                destroy();
                parcel2.writeNoException();
                return true;
            case 11:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                performClick((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean recordImpression = recordImpression((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, recordImpression);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                reportTouchEvent((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzaej zzto = zzto();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzto);
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                zv zztp = zztp();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztp);
                return true;
            case 17:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            default:
                return false;
        }
    }
}
