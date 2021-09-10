package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzes implements zzet {
    private final /* synthetic */ Activity val$activity;

    zzes(zzel zzel, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.val$activity);
    }
}
