package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import java.util.List;

public abstract class zzagq extends zzgy implements zzagr {
    public zzagq() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzagm zzagm;
        switch (i) {
            case 2:
                String headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                String body = getBody();
                parcel2.writeNoException();
                parcel2.writeString(body);
                return true;
            case 5:
                zzaer zztn = zztn();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztn);
                return true;
            case 6:
                String callToAction = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(callToAction);
                return true;
            case 7:
                String advertiser = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(advertiser);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                String store = getStore();
                parcel2.writeNoException();
                parcel2.writeString(store);
                return true;
            case 10:
                String price = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(price);
                return true;
            case 11:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 13:
                destroy();
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzaej zzto = zzto();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzto);
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                performClick((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                boolean recordImpression = recordImpression((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, recordImpression);
                return true;
            case 17:
                reportTouchEvent((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                zv zztm = zztm();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztm);
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                zv zztp = zztp();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztp);
                return true;
            case 20:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, extras);
                return true;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzagm = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    if (queryLocalInterface instanceof zzagm) {
                        zzagm = (zzagm) queryLocalInterface;
                    } else {
                        zzagm = new zzago(readStrongBinder);
                    }
                }
                zza(zzagm);
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                cancelUnconfirmedClick();
                parcel2.writeNoException();
                return true;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                List muteThisAdReasons = getMuteThisAdReasons();
                parcel2.writeNoException();
                parcel2.writeList(muteThisAdReasons);
                return true;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                boolean isCustomMuteThisAdEnabled = isCustomMuteThisAdEnabled();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isCustomMuteThisAdEnabled);
                return true;
            case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                zza(zzyq.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                zza(zzym.zzf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                zztx();
                parcel2.writeNoException();
                return true;
            case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                recordCustomClickGesture();
                parcel2.writeNoException();
                return true;
            case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                zzaem zzty = zzty();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzty);
                return true;
            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                boolean isCustomClickGestureEnabled = isCustomClickGestureEnabled();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isCustomClickGestureEnabled);
                return true;
            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                zzyx zzki = zzki();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzki);
                return true;
            case 32:
                zza(zzyv.zzi(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
