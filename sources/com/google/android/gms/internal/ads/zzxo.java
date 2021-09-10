package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import org.apache.http.util.LangUtils;

public abstract class zzxo extends zzgy implements zzxl {
    public zzxo() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzxl zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (queryLocalInterface instanceof zzxl) {
            return (zzxl) queryLocalInterface;
        }
        return new zzxn(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzwx zzwx = null;
        zzyb zzyb = null;
        zzxc zzxc = null;
        zzyw zzyw = null;
        zzxs zzxs = null;
        zzxz zzxz = null;
        zzww zzww = null;
        zzxt zzxt = null;
        switch (i) {
            case 1:
                zv zzke = zzke();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzke);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isReady = isReady();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isReady);
                return true;
            case 4:
                boolean zza = zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR));
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zza);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzwx) {
                        zzwx = (zzwx) queryLocalInterface;
                    } else {
                        zzwx = new zzwz(readStrongBinder);
                    }
                }
                zza(zzwx);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (queryLocalInterface2 instanceof zzxt) {
                        zzxt = (zzxt) queryLocalInterface2;
                    } else {
                        zzxt = new zzxv(readStrongBinder2);
                    }
                }
                zza(zzxt);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzkf();
                parcel2.writeNoException();
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzvs zzkg = zzkg();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzkg);
                return true;
            case 13:
                zza((zzvs) zzgx.zza(parcel, zzvs.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zza(zzasb.zzaj(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zza(zzash.zzal(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
            case 17:
            case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
            case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
            default:
                return false;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                zza(zzack.zzl(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (queryLocalInterface3 instanceof zzww) {
                        zzww = (zzww) queryLocalInterface3;
                    } else {
                        zzww = new zzwy(readStrongBinder3);
                    }
                }
                zza(zzww);
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface4 instanceof zzxz) {
                        zzxz = (zzxz) queryLocalInterface4;
                    } else {
                        zzxz = new zzyc(readStrongBinder4);
                    }
                }
                zza(zzxz);
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                setManualImpressionsEnabled(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isLoading);
                return true;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                zza(zzaux.zzao(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                zza((zzaau) zzgx.zza(parcel, zzaau.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                zza((zzzi) zzgx.zza(parcel, zzzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                zzxt zzkj = zzkj();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzkj);
                return true;
            case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                zzwx zzkk = zzkk();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzkk);
                return true;
            case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                String zzkh = zzkh();
                parcel2.writeNoException();
                parcel2.writeString(zzkh);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (queryLocalInterface5 instanceof zzxs) {
                        zzxs = (zzxs) queryLocalInterface5;
                    } else {
                        zzxs = new zzxu(readStrongBinder5);
                    }
                }
                zza(zzxs);
                parcel2.writeNoException();
                return true;
            case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, adMetadata);
                return true;
            case 38:
                zzbl(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzvx) zzgx.zza(parcel, zzvx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zza(zzso.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                zzyx zzki = zzki();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzki);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    if (queryLocalInterface6 instanceof zzyw) {
                        zzyw = (zzyw) queryLocalInterface6;
                    } else {
                        zzyw = new zzyy(readStrongBinder6);
                    }
                }
                zza(zzyw);
                parcel2.writeNoException();
                return true;
            case 43:
                zzvl zzvl = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    if (queryLocalInterface7 instanceof zzxc) {
                        zzxc = (zzxc) queryLocalInterface7;
                    } else {
                        zzxc = new zzxe(readStrongBinder7);
                    }
                }
                zza(zzvl, zzxc);
                parcel2.writeNoException();
                return true;
            case 44:
                zze(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    if (queryLocalInterface8 instanceof zzyb) {
                        zzyb = (zzyb) queryLocalInterface8;
                    } else {
                        zzyb = new zzyd(readStrongBinder8);
                    }
                }
                zza(zzyb);
                parcel2.writeNoException();
                return true;
        }
    }
}
