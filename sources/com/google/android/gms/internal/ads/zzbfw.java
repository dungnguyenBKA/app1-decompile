package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import java.util.List;
import java.util.Map;

public abstract class zzbfw extends zzgy implements zzbfu {
    public zzbfw() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                performAction((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle performActionWithResponse = performActionWithResponse((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgx.zzb(parcel2, performActionWithResponse);
                return true;
            case 3:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                zza(parcel.readString(), parcel.readString(), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map userProperties = getUserProperties(parcel.readString(), parcel.readString(), zzgx.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(userProperties);
                return true;
            case 6:
                int maxUserProperties = getMaxUserProperties(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(maxUserProperties);
                return true;
            case 7:
                setConditionalUserProperty((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List conditionalUserProperties = getConditionalUserProperties(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(conditionalUserProperties);
                return true;
            case 10:
                String appInstanceId = getAppInstanceId();
                parcel2.writeNoException();
                parcel2.writeString(appInstanceId);
                return true;
            case 11:
                String gmpAppId = getGmpAppId();
                parcel2.writeNoException();
                parcel2.writeString(gmpAppId);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                long generateEventId = generateEventId();
                parcel2.writeNoException();
                parcel2.writeLong(generateEventId);
                return true;
            case 13:
                beginAdUnitExposure(parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                endAdUnitExposure(parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzb(zv.a.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                String currentScreenName = getCurrentScreenName();
                parcel2.writeNoException();
                parcel2.writeString(currentScreenName);
                return true;
            case 17:
                String currentScreenClass = getCurrentScreenClass();
                parcel2.writeNoException();
                parcel2.writeString(currentScreenClass);
                return true;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                String appIdOrigin = getAppIdOrigin();
                parcel2.writeNoException();
                parcel2.writeString(appIdOrigin);
                return true;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                setConsent((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
