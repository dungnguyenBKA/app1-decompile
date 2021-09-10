package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

public interface zzp extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(zzs zzs);

    void getAppInstanceId(zzs zzs);

    void getCachedAppInstanceId(zzs zzs);

    void getConditionalUserProperties(String str, String str2, zzs zzs);

    void getCurrentScreenClass(zzs zzs);

    void getCurrentScreenName(zzs zzs);

    void getGmpAppId(zzs zzs);

    void getMaxUserProperties(String str, zzs zzs);

    void getTestFlag(zzs zzs, int i);

    void getUserProperties(String str, String str2, boolean z, zzs zzs);

    void initForTests(Map map);

    void initialize(zv zvVar, zzy zzy, long j);

    void isDataCollectionEnabled(zzs zzs);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzs zzs, long j);

    void logHealthData(int i, String str, zv zvVar, zv zvVar2, zv zvVar3);

    void onActivityCreated(zv zvVar, Bundle bundle, long j);

    void onActivityDestroyed(zv zvVar, long j);

    void onActivityPaused(zv zvVar, long j);

    void onActivityResumed(zv zvVar, long j);

    void onActivitySaveInstanceState(zv zvVar, zzs zzs, long j);

    void onActivityStarted(zv zvVar, long j);

    void onActivityStopped(zv zvVar, long j);

    void performAction(Bundle bundle, zzs zzs, long j);

    void registerOnMeasurementEventListener(zzv zzv);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(zv zvVar, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(zzv zzv);

    void setInstanceIdProvider(zzx zzx);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, zv zvVar, boolean z, long j);

    void unregisterOnMeasurementEventListener(zzv zzv);
}
