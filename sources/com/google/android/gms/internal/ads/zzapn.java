package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzapn extends zzgy implements zzapk {
    public zzapn() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzapk zzaf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (queryLocalInterface instanceof zzapk) {
            return (zzapk) queryLocalInterface;
        }
        return new zzapm(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzapp zzapp;
        zzapp zzapp2;
        zzaoy zzaoy = null;
        zzapj zzapl = null;
        zzape zzapg = null;
        zzapj zzapl2 = null;
        zzapd zzapf = null;
        if (i == 1) {
            zv O = zv.a.O(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzgx.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzgx.zza(parcel, creator);
            zzvs zzvs = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzapp = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (queryLocalInterface instanceof zzapp) {
                    zzapp2 = (zzapp) queryLocalInterface;
                } else {
                    zzapp2 = new zzapr(readStrongBinder);
                }
                zzapp = zzapp2;
            }
            zza(O, readString, bundle, bundle2, zzvs, zzapp);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzapy zzvc = zzvc();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zzvc);
        } else if (i == 3) {
            zzapy zzvd = zzvd();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zzvd);
        } else if (i == 5) {
            zzzc videoController = getVideoController();
            parcel2.writeNoException();
            zzgx.zza(parcel2, videoController);
        } else if (i == 10) {
            zzy(zv.a.O(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzvl zzvl = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    zv O2 = zv.a.O(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        if (queryLocalInterface2 instanceof zzaoy) {
                            zzaoy = (zzaoy) queryLocalInterface2;
                        } else {
                            zzaoy = new zzapa(readStrongBinder2);
                        }
                    }
                    zza(readString2, readString3, zzvl, O2, zzaoy, zzann.zzad(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR));
                    parcel2.writeNoException();
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzvl zzvl2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    zv O3 = zv.a.O(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        if (queryLocalInterface3 instanceof zzapd) {
                            zzapf = (zzapd) queryLocalInterface3;
                        } else {
                            zzapf = new zzapf(readStrongBinder3);
                        }
                    }
                    zza(readString4, readString5, zzvl2, O3, zzapf, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    boolean zzz = zzz(zv.a.O(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, zzz);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzvl zzvl3 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    zv O4 = zv.a.O(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        if (queryLocalInterface4 instanceof zzapj) {
                            zzapl2 = (zzapj) queryLocalInterface4;
                        } else {
                            zzapl2 = new zzapl(readStrongBinder4);
                        }
                    }
                    zza(readString6, readString7, zzvl3, O4, zzapl2, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 17:
                    boolean zzaa = zzaa(zv.a.O(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, zzaa);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzvl zzvl4 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    zv O5 = zv.a.O(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        if (queryLocalInterface5 instanceof zzape) {
                            zzapg = (zzape) queryLocalInterface5;
                        } else {
                            zzapg = new zzapg(readStrongBinder5);
                        }
                    }
                    zza(readString8, readString9, zzvl4, O5, zzapg, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    zzdm(parcel.readString());
                    parcel2.writeNoException();
                    break;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzvl zzvl5 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    zv O6 = zv.a.O(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        if (queryLocalInterface6 instanceof zzapj) {
                            zzapl = (zzapj) queryLocalInterface6;
                        } else {
                            zzapl = new zzapl(readStrongBinder6);
                        }
                    }
                    zzb(readString10, readString11, zzvl5, O6, zzapl, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                default:
                    return false;
            }
        } else {
            zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
