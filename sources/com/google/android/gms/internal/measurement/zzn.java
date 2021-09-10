package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.Map;

public final class zzn extends zza implements zzp {
    zzn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void beginAdUnitExposure(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(23, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, bundle);
        zzc(9, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void clearMeasurementEnabled(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(43, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void endAdUnitExposure(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(24, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void generateEventId(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(22, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getAppInstanceId(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(20, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCachedAppInstanceId(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getConditionalUserProperties(String str, String str2, zzs zzs) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zze(zza, zzs);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCurrentScreenClass(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(17, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCurrentScreenName(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(16, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getGmpAppId(zzs zzs) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zzc(21, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getMaxUserProperties(String str, zzs zzs) {
        Parcel zza = zza();
        zza.writeString(str);
        zzc.zze(zza, zzs);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getTestFlag(zzs zzs, int i) {
        Parcel zza = zza();
        zzc.zze(zza, zzs);
        zza.writeInt(i);
        zzc(38, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getUserProperties(String str, String str2, boolean z, zzs zzs) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzb(zza, z);
        zzc.zze(zza, zzs);
        zzc(5, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void initForTests(Map map) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void initialize(zv zvVar, zzy zzy, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zzc.zzd(zza, zzy);
        zza.writeLong(j);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void isDataCollectionEnabled(zzs zzs) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, bundle);
        zzc.zzb(zza, z);
        zzc.zzb(zza, z2);
        zza.writeLong(j);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzs zzs, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logHealthData(int i, String str, zv zvVar, zv zvVar2, zv zvVar3) {
        Parcel zza = zza();
        zza.writeInt(5);
        zza.writeString(str);
        zzc.zze(zza, zvVar);
        zzc.zze(zza, zvVar2);
        zzc.zze(zza, zvVar3);
        zzc(33, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityCreated(zv zvVar, Bundle bundle, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(27, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityDestroyed(zv zvVar, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeLong(j);
        zzc(28, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityPaused(zv zvVar, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeLong(j);
        zzc(29, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityResumed(zv zvVar, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeLong(j);
        zzc(30, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivitySaveInstanceState(zv zvVar, zzs zzs, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zzc.zze(zza, zzs);
        zza.writeLong(j);
        zzc(31, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityStarted(zv zvVar, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeLong(j);
        zzc(25, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityStopped(zv zvVar, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeLong(j);
        zzc(26, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void performAction(Bundle bundle, zzs zzs, long j) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc.zze(zza, zzs);
        zza.writeLong(j);
        zzc(32, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void registerOnMeasurementEventListener(zzv zzv) {
        Parcel zza = zza();
        zzc.zze(zza, zzv);
        zzc(35, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void resetAnalyticsData(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(8, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConsent(Bundle bundle, long j) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(44, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConsentThirdParty(Bundle bundle, long j) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(45, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setCurrentScreen(zv zvVar, String str, String str2, long j) {
        Parcel zza = zza();
        zzc.zze(zza, zvVar);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeLong(j);
        zzc(15, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setDataCollectionEnabled(boolean z) {
        Parcel zza = zza();
        zzc.zzb(zza, z);
        zzc(39, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc(42, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setEventInterceptor(zzv zzv) {
        Parcel zza = zza();
        zzc.zze(zza, zzv);
        zzc(34, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setInstanceIdProvider(zzx zzx) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel zza = zza();
        zzc.zzb(zza, z);
        zza.writeLong(j);
        zzc(11, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setMinimumSessionDuration(long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setSessionTimeoutDuration(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(14, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setUserId(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(7, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setUserProperty(String str, String str2, zv zvVar, boolean z, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zze(zza, zvVar);
        zzc.zzb(zza, z);
        zza.writeLong(j);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void unregisterOnMeasurementEventListener(zzv zzv) {
        Parcel zza = zza();
        zzc.zze(zza, zzv);
        zzc(36, zza);
    }
}
