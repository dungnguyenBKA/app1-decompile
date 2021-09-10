package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzeq implements zzet {
    private final /* synthetic */ Activity val$activity;

    zzeq(zzel zzel, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.val$activity);
    }
}
