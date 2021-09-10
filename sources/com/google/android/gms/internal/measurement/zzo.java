package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;
import org.apache.http.util.LangUtils;

public abstract class zzo extends zzb implements zzp {
    public zzo() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzp asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        if (queryLocalInterface instanceof zzp) {
            return (zzp) queryLocalInterface;
        }
        return new zzn(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzs zzs;
        zzs zzs2;
        zzs zzs3 = null;
        zzs zzs4 = null;
        zzs zzs5 = null;
        zzv zzv = null;
        zzv zzv2 = null;
        zzv zzv3 = null;
        zzs zzs6 = null;
        zzs zzs7 = null;
        zzs zzs8 = null;
        zzs zzs9 = null;
        zzs zzs10 = null;
        zzs zzs11 = null;
        zzx zzx = null;
        zzs zzs12 = null;
        zzs zzs13 = null;
        zzs zzs14 = null;
        zzs zzs15 = null;
        switch (i) {
            case 1:
                initialize(zv.a.O(parcel.readStrongBinder()), (zzy) zzc.zzc(parcel, zzy.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzc.zzc(parcel, Bundle.CREATOR), zzc.zza(parcel), zzc.zza(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzc.zzc(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzs = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface instanceof zzs) {
                        zzs2 = (zzs) queryLocalInterface;
                    } else {
                        zzs2 = new zzq(readStrongBinder);
                    }
                    zzs = zzs2;
                }
                logEventAndBundle(readString, readString2, bundle, zzs, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), zv.a.O(parcel.readStrongBinder()), zzc.zza(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean zza = zzc.zza(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface2 instanceof zzs) {
                        zzs3 = (zzs) queryLocalInterface2;
                    } else {
                        zzs3 = new zzq(readStrongBinder2);
                    }
                }
                getUserProperties(readString3, readString4, zza, zzs3);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface3 instanceof zzs) {
                        zzs15 = (zzs) queryLocalInterface3;
                    } else {
                        zzs15 = new zzq(readStrongBinder3);
                    }
                }
                getMaxUserProperties(readString5, zzs15);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) zzc.zzc(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzc.zzc(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface4 instanceof zzs) {
                        zzs14 = (zzs) queryLocalInterface4;
                    } else {
                        zzs14 = new zzq(readStrongBinder4);
                    }
                }
                getConditionalUserProperties(readString6, readString7, zzs14);
                break;
            case 11:
                setMeasurementEnabled(zzc.zza(parcel), parcel.readLong());
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                setCurrentScreen(zv.a.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface5 instanceof zzs) {
                        zzs13 = (zzs) queryLocalInterface5;
                    } else {
                        zzs13 = new zzq(readStrongBinder5);
                    }
                }
                getCurrentScreenName(zzs13);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface6 instanceof zzs) {
                        zzs12 = (zzs) queryLocalInterface6;
                    } else {
                        zzs12 = new zzq(readStrongBinder6);
                    }
                }
                getCurrentScreenClass(zzs12);
                break;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    if (queryLocalInterface7 instanceof zzx) {
                        zzx = (zzx) queryLocalInterface7;
                    } else {
                        zzx = new zzw(readStrongBinder7);
                    }
                }
                setInstanceIdProvider(zzx);
                break;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface8 instanceof zzs) {
                        zzs11 = (zzs) queryLocalInterface8;
                    } else {
                        zzs11 = new zzq(readStrongBinder8);
                    }
                }
                getCachedAppInstanceId(zzs11);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface9 instanceof zzs) {
                        zzs10 = (zzs) queryLocalInterface9;
                    } else {
                        zzs10 = new zzq(readStrongBinder9);
                    }
                }
                getAppInstanceId(zzs10);
                break;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface10 instanceof zzs) {
                        zzs9 = (zzs) queryLocalInterface10;
                    } else {
                        zzs9 = new zzq(readStrongBinder10);
                    }
                }
                getGmpAppId(zzs9);
                break;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface11 instanceof zzs) {
                        zzs8 = (zzs) queryLocalInterface11;
                    } else {
                        zzs8 = new zzq(readStrongBinder11);
                    }
                }
                generateEventId(zzs8);
                break;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                onActivityStarted(zv.a.O(parcel.readStrongBinder()), parcel.readLong());
                break;
            case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                onActivityStopped(zv.a.O(parcel.readStrongBinder()), parcel.readLong());
                break;
            case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                onActivityCreated(zv.a.O(parcel.readStrongBinder()), (Bundle) zzc.zzc(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                onActivityDestroyed(zv.a.O(parcel.readStrongBinder()), parcel.readLong());
                break;
            case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                onActivityPaused(zv.a.O(parcel.readStrongBinder()), parcel.readLong());
                break;
            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                onActivityResumed(zv.a.O(parcel.readStrongBinder()), parcel.readLong());
                break;
            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                zv O = zv.a.O(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface12 instanceof zzs) {
                        zzs7 = (zzs) queryLocalInterface12;
                    } else {
                        zzs7 = new zzq(readStrongBinder12);
                    }
                }
                onActivitySaveInstanceState(O, zzs7, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) zzc.zzc(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface13 instanceof zzs) {
                        zzs6 = (zzs) queryLocalInterface13;
                    } else {
                        zzs6 = new zzq(readStrongBinder13);
                    }
                }
                performAction(bundle2, zzs6, parcel.readLong());
                break;
            case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                logHealthData(parcel.readInt(), parcel.readString(), zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()));
                break;
            case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface14 instanceof zzv) {
                        zzv3 = (zzv) queryLocalInterface14;
                    } else {
                        zzv3 = new zzt(readStrongBinder14);
                    }
                }
                setEventInterceptor(zzv3);
                break;
            case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface15 instanceof zzv) {
                        zzv2 = (zzv) queryLocalInterface15;
                    } else {
                        zzv2 = new zzt(readStrongBinder15);
                    }
                }
                registerOnMeasurementEventListener(zzv2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (queryLocalInterface16 instanceof zzv) {
                        zzv = (zzv) queryLocalInterface16;
                    } else {
                        zzv = new zzt(readStrongBinder16);
                    }
                }
                unregisterOnMeasurementEventListener(zzv);
                break;
            case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                initForTests(zzc.zzf(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface17 instanceof zzs) {
                        zzs5 = (zzs) queryLocalInterface17;
                    } else {
                        zzs5 = new zzq(readStrongBinder17);
                    }
                }
                getTestFlag(zzs5, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(zzc.zza(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (queryLocalInterface18 instanceof zzs) {
                        zzs4 = (zzs) queryLocalInterface18;
                    } else {
                        zzs4 = new zzq(readStrongBinder18);
                    }
                }
                isDataCollectionEnabled(zzs4);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) zzc.zzc(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) zzc.zzc(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) zzc.zzc(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
