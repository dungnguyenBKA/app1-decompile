package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import java.util.List;
import java.util.Map;

public final class zzamw extends zzbfw {
    private final cw zzdll;

    zzamw(cw cwVar) {
        this.zzdll = cwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void beginAdUnitExposure(String str) {
        this.zzdll.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzdll.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void endAdUnitExposure(String str) {
        this.zzdll.c(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final long generateEventId() {
        return this.zzdll.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getAppIdOrigin() {
        return this.zzdll.e();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getAppInstanceId() {
        return this.zzdll.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List getConditionalUserProperties(String str, String str2) {
        return this.zzdll.g(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getCurrentScreenClass() {
        return this.zzdll.h();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getCurrentScreenName() {
        return this.zzdll.i();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getGmpAppId() {
        return this.zzdll.j();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final int getMaxUserProperties(String str) {
        return this.zzdll.k(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final Map getUserProperties(String str, String str2, boolean z) {
        return this.zzdll.l(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void logEvent(String str, String str2, Bundle bundle) {
        this.zzdll.m(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void performAction(Bundle bundle) {
        this.zzdll.n(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final Bundle performActionWithResponse(Bundle bundle) {
        return this.zzdll.o(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void setConditionalUserProperty(Bundle bundle) {
        this.zzdll.q(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void setConsent(Bundle bundle) {
        this.zzdll.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zza(String str, String str2, zv zvVar) {
        this.zzdll.t(str, str2, zvVar != null ? aw.P(zvVar) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzb(zv zvVar, String str, String str2) {
        this.zzdll.s(zvVar != null ? (Activity) aw.P(zvVar) : null, str, str2);
    }
}
