package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import java.util.List;

public abstract class zzafm extends zzgy implements zzafn {
    public zzafm() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzafn zzr(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        if (queryLocalInterface instanceof zzafn) {
            return (zzafn) queryLocalInterface;
        }
        return new zzafp(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                String zzct = zzct(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(zzct);
                return true;
            case 2:
                zzaer zzcu = zzcu(parcel.readString());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzcu);
                return true;
            case 3:
                List<String> availableAssetNames = getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                String customTemplateId = getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(customTemplateId);
                return true;
            case 5:
                performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                zv zztr = zztr();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztr);
                return true;
            case 10:
                boolean zzp = zzp(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzp);
                return true;
            case 11:
                zv zztm = zztm();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztm);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                boolean zzts = zzts();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzts);
                return true;
            case 13:
                boolean zztt = zztt();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zztt);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzq(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zztu();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
