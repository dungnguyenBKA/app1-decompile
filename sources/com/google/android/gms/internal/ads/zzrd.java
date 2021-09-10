package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzrd implements zzrh {
    private final /* synthetic */ Activity val$activity;

    zzrd(zzqz zzqz, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.val$activity);
    }
}
