package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.vungle.warren.error.VungleException;

public abstract class zzxh extends zzgy implements zzxi {
    public zzxh() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzwx zzwx = null;
        zzxz zzxz = null;
        switch (i) {
            case 1:
                zzxd zzqz = zzqz();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzqz);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzwx) {
                        zzwx = (zzwx) queryLocalInterface;
                    } else {
                        zzwx = new zzwz(readStrongBinder);
                    }
                }
                zzb(zzwx);
                parcel2.writeNoException();
                return true;
            case 3:
                zza(zzafq.zzs(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zza(zzafv.zzt(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                zza(parcel.readString(), zzagb.zzv(parcel.readStrongBinder()), zzafw.zzu(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zza((zzaeh) zzgx.zza(parcel, zzaeh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface2 instanceof zzxz) {
                        zzxz = (zzxz) queryLocalInterface2;
                    } else {
                        zzxz = new zzyc(readStrongBinder2);
                    }
                }
                zzb(zzxz);
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzage.zzw(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                zza((PublisherAdViewOptions) zzgx.zza(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                zza(zzagj.zzx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            default:
                return false;
            case 13:
                zza((zzajt) zzgx.zza(parcel, zzajt.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zza(zzaka.zzab(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zza((AdManagerAdViewOptions) zzgx.zza(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
