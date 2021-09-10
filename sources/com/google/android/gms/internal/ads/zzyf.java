package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import java.util.List;

public abstract class zzyf extends zzgy implements zzyg {
    public zzyf() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                initialize();
                parcel2.writeNoException();
                return true;
            case 2:
                setAppVolume(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                zzcd(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                setAppMuted(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                zzb(zv.a.O(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zza(parcel.readString(), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float zzra = zzra();
                parcel2.writeNoException();
                parcel2.writeFloat(zzra);
                return true;
            case 8:
                boolean zzrb = zzrb();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzrb);
                return true;
            case 9:
                String versionString = getVersionString();
                parcel2.writeNoException();
                parcel2.writeString(versionString);
                return true;
            case 10:
                zzce(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza(zzanh.zzac(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zza(zzajn.zzaa(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzajh> zzrc = zzrc();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzrc);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zza((zzaao) zzgx.zza(parcel, zzaao.CREATOR));
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzrd();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
