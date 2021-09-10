package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzavp extends zzgy implements zzavm {
    public zzavp() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzavm zzar(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (queryLocalInterface instanceof zzavm) {
            return (zzavm) queryLocalInterface;
        }
        return new zzavo(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzavu zzavu = null;
        zzavu zzavu2 = null;
        zzavz zzavz = null;
        zzavr zzavr = null;
        switch (i) {
            case 1:
                zzvl zzvl = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface instanceof zzavu) {
                        zzavu = (zzavu) queryLocalInterface;
                    } else {
                        zzavu = new zzavw(readStrongBinder);
                    }
                }
                zza(zzvl, zzavu);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (queryLocalInterface2 instanceof zzavr) {
                        zzavr = (zzavr) queryLocalInterface2;
                    } else {
                        zzavr = new zzavt(readStrongBinder2);
                    }
                }
                zza(zzavr);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isLoaded = isLoaded();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zze(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (queryLocalInterface3 instanceof zzavz) {
                        zzavz = (zzavz) queryLocalInterface3;
                    } else {
                        zzavz = new zzavy(readStrongBinder3);
                    }
                }
                zza(zzavz);
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzawh) zzgx.zza(parcel, zzawh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzyu.zzh(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, adMetadata);
                return true;
            case 10:
                zza(zv.a.O(parcel.readStrongBinder()), zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzavl zzrv = zzrv();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzrv);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzyx zzki = zzki();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzki);
                return true;
            case 13:
                zza(zzyv.zzi(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzvl zzvl2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface4 instanceof zzavu) {
                        zzavu2 = (zzavu) queryLocalInterface4;
                    } else {
                        zzavu2 = new zzavw(readStrongBinder4);
                    }
                }
                zzb(zzvl2, zzavu2);
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
