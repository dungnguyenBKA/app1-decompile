package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzauq extends zzgy implements zzaur {
    public zzauq() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzaur zzan(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        if (queryLocalInterface instanceof zzaur) {
            return (zzaur) queryLocalInterface;
        }
        return new zzaut(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zza((zzava) zzgx.zza(parcel, zzava.CREATOR));
            parcel2.writeNoException();
        } else if (i != 2) {
            zzauu zzauu = null;
            zzaup zzaup = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    if (queryLocalInterface instanceof zzauu) {
                        zzauu = (zzauu) queryLocalInterface;
                    } else {
                        zzauu = new zzauw(readStrongBinder);
                    }
                }
                zza(zzauu);
                parcel2.writeNoException();
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        boolean isLoaded = isLoaded();
                        parcel2.writeNoException();
                        zzgx.writeBoolean(parcel2, isLoaded);
                        break;
                    case 6:
                        pause();
                        parcel2.writeNoException();
                        break;
                    case 7:
                        resume();
                        parcel2.writeNoException();
                        break;
                    case 8:
                        destroy();
                        parcel2.writeNoException();
                        break;
                    case 9:
                        zzj(zv.a.O(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 10:
                        zzk(zv.a.O(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 11:
                        zzl(zv.a.O(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        String mediationAdapterClassName = getMediationAdapterClassName();
                        parcel2.writeNoException();
                        parcel2.writeString(mediationAdapterClassName);
                        break;
                    case 13:
                        setUserId(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        zza(zzxr.zzd(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        Bundle adMetadata = getAdMetadata();
                        parcel2.writeNoException();
                        zzgx.zzb(parcel2, adMetadata);
                        break;
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            if (queryLocalInterface2 instanceof zzaup) {
                                zzaup = (zzaup) queryLocalInterface2;
                            } else {
                                zzaup = new zzauo(readStrongBinder2);
                            }
                        }
                        zza(zzaup);
                        parcel2.writeNoException();
                        break;
                    case 17:
                        setAppPackageName(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        zzi(zv.a.O(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        setCustomData(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case 20:
                        boolean zzrw = zzrw();
                        parcel2.writeNoException();
                        zzgx.writeBoolean(parcel2, zzrw);
                        break;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        zzyx zzki = zzki();
                        parcel2.writeNoException();
                        zzgx.zza(parcel2, zzki);
                        break;
                    default:
                        return false;
                }
            } else {
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
            }
        } else {
            show();
            parcel2.writeNoException();
        }
        return true;
    }
}
