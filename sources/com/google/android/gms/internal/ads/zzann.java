package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;

public abstract class zzann extends zzgy implements zzank {
    public zzann() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzank zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if (queryLocalInterface instanceof zzank) {
            return (zzank) queryLocalInterface;
        }
        return new zzanm(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzanp zzanp;
        switch (i) {
            case 1:
                onAdClicked();
                break;
            case 2:
                onAdClosed();
                break;
            case 3:
                onAdFailedToLoad(parcel.readInt());
                break;
            case 4:
                onAdLeftApplication();
                break;
            case 5:
                onAdOpened();
                break;
            case 6:
                onAdLoaded();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzanp = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (queryLocalInterface instanceof zzanp) {
                        zzanp = (zzanp) queryLocalInterface;
                    } else {
                        zzanp = new zzano(readStrongBinder);
                    }
                }
                zza(zzanp);
                break;
            case 8:
                onAdImpression();
                break;
            case 9:
                onAppEvent(parcel.readString(), parcel.readString());
                break;
            case 10:
                zza(zzafm.zzr(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                onVideoEnd();
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzdi(parcel.readString());
                break;
            case 13:
                zzve();
                break;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzb((zzavj) zzgx.zza(parcel, zzavj.CREATOR));
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                onVideoPause();
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                zza(zzavk.zzaq(parcel.readStrongBinder()));
                break;
            case 17:
                zzdb(parcel.readInt());
                break;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                zzvf();
                break;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                zzb((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                break;
            case 20:
                onVideoPlay();
                break;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                zzdj(parcel.readString());
                break;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                zzc(parcel.readInt(), parcel.readString());
                break;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                zzd((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
                break;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                zzf((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
