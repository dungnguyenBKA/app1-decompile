package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzeu implements zzet {
    private final /* synthetic */ Activity val$activity;

    zzeu(zzel zzel, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.val$activity);
    }
}
