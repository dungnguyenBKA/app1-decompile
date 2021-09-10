package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzc;
import com.vungle.warren.error.VungleException;
import java.util.List;

public abstract class x2 extends zzb implements y2 {
    public x2() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                ((c5) this).M((zzas) zzc.zzc(parcel, zzas.CREATOR), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                ((c5) this).A((zzkg) zzc.zzc(parcel, zzkg.CREATOR), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                ((c5) this).H((zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                ((c5) this).Q((zzas) zzc.zzc(parcel, zzas.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                ((c5) this).y((zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkg> R = ((c5) this).R((zzp) zzc.zzc(parcel, zzp.CREATOR), zzc.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(R);
                return true;
            case 9:
                byte[] v = ((c5) this).v((zzas) zzc.zzc(parcel, zzas.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(v);
                return true;
            case 10:
                ((c5) this).m(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String e = ((c5) this).e((zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                ((c5) this).l((zzaa) zzc.zzc(parcel, zzaa.CREATOR), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                ((c5) this).S((zzaa) zzc.zzc(parcel, zzaa.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                List<zzkg> o = ((c5) this).o(parcel.readString(), parcel.readString(), zzc.zza(parcel), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(o);
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                List<zzkg> N = ((c5) this).N(parcel.readString(), parcel.readString(), parcel.readString(), zzc.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(N);
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                List<zzaa> a = ((c5) this).a(parcel.readString(), parcel.readString(), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a);
                return true;
            case 17:
                List<zzaa> p = ((c5) this).p(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(p);
                return true;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                ((c5) this).s((zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                ((c5) this).t((Bundle) zzc.zzc(parcel, Bundle.CREATOR), (zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                ((c5) this).b((zzp) zzc.zzc(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
