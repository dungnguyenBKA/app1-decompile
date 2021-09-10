package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzani extends zzgy implements zzanj {
    public zzani() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzank zzank = null;
        switch (i) {
            case 1:
                zv O = zv.a.O(parcel.readStrongBinder());
                zzvs zzvs = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
                zzvl zzvl = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface instanceof zzank) {
                        zzank = (zzank) queryLocalInterface;
                    } else {
                        zzank = new zzanm(readStrongBinder);
                    }
                }
                zza(O, zzvs, zzvl, readString, zzank);
                parcel2.writeNoException();
                return true;
            case 2:
                zv zzuu = zzuu();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuu);
                return true;
            case 3:
                zv O2 = zv.a.O(parcel.readStrongBinder());
                zzvl zzvl2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface2 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface2;
                    } else {
                        zzank = new zzanm(readStrongBinder2);
                    }
                }
                zza(O2, zzvl2, readString2, zzank);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                zv O3 = zv.a.O(parcel.readStrongBinder());
                zzvs zzvs2 = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
                zzvl zzvl3 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface3 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface3;
                    } else {
                        zzank = new zzanm(readStrongBinder3);
                    }
                }
                zza(O3, zzvs2, zzvl3, readString3, readString4, zzank);
                parcel2.writeNoException();
                return true;
            case 7:
                zv O4 = zv.a.O(parcel.readStrongBinder());
                zzvl zzvl4 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface4 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface4;
                    } else {
                        zzank = new zzanm(readStrongBinder4);
                    }
                }
                zza(O4, zzvl4, readString5, readString6, zzank);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(zv.a.O(parcel.readStrongBinder()), (zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString(), zzave.zzap(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean isInitialized = isInitialized();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isInitialized);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zv O5 = zv.a.O(parcel.readStrongBinder());
                zzvl zzvl5 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface5 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface5;
                    } else {
                        zzank = new zzanm(readStrongBinder5);
                    }
                }
                zza(O5, zzvl5, readString7, readString8, zzank, (zzaeh) zzgx.zza(parcel, zzaeh.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzanr zzuv = zzuv();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuv);
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                zzans zzuw = zzuw();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuw);
                return true;
            case 17:
                Bundle zzux = zzux();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzux);
                return true;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, interstitialAdapterInfo);
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                Bundle zzuy = zzuy();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzuy);
                return true;
            case 20:
                zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                zzs(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                boolean zzuz = zzuz();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzuz);
                return true;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                zza(zv.a.O(parcel.readStrongBinder()), zzave.zzap(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                zzafn zzva = zzva();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzva);
                return true;
            case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                zzanx zzvb = zzvb();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzvb);
                return true;
            case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                zv O6 = zv.a.O(parcel.readStrongBinder());
                zzvl zzvl6 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface6 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface6;
                    } else {
                        zzank = new zzanm(readStrongBinder6);
                    }
                }
                zzb(O6, zzvl6, readString9, zzank);
                parcel2.writeNoException();
                return true;
            case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
            default:
                return false;
            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                zzt(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                zza(zv.a.O(parcel.readStrongBinder()), zzaji.zzz(parcel.readStrongBinder()), parcel.createTypedArrayList(zzajr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                zv O7 = zv.a.O(parcel.readStrongBinder());
                zzvl zzvl7 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface7 instanceof zzank) {
                        zzank = (zzank) queryLocalInterface7;
                    } else {
                        zzank = new zzanm(readStrongBinder7);
                    }
                }
                zzc(O7, zzvl7, readString10, zzank);
                parcel2.writeNoException();
                return true;
            case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                zzapy zzvc = zzvc();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzvc);
                return true;
            case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                zzapy zzvd = zzvd();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzvd);
                return true;
        }
    }
}
